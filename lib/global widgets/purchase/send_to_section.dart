
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SendToSection extends StatelessWidget {
  final VoidCallback? onScan;
  final String? initialValue;
  const SendToSection({
    Key ?key,
    required this.onScan,
    required this.initialValue
  })
      : assert(onScan != null),
        assert(initialValue != null),
        super(key: key);

  static List<String> wallets = [
    "Enter Wallet Address",
    "My bitcoin wallet",
    "Mac Wallet"
  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 8.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0
                  ),
                  child: Text('Send to',
                    style: TextStyle(
                        fontSize: 13.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade700
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric( horizontal: 2.0),
                  margin: const EdgeInsets.only(right: 20),
                  height: 50,
                  width: 210,
                  decoration: const BoxDecoration(
                      color: Colors.transparent
                  ),
                  child: DropdownButtonFormField(
                      elevation: 0,
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                      value: initialValue,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xFF18181a),
                      ),
                      iconSize: 30,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      items:wallets
                          .map<DropdownMenuItem<String>>((value) {
                        return DropdownMenuItem<String>(
                            value: value,
                            child: Padding(padding: const EdgeInsets.only(left: 10.0),
                              child: Text(value,
                                style: const TextStyle(
                                    color: Color(0xFF18181a),
                                    fontFamily: "Poppins",
                                    fontSize: 16.0
                                ),
                              ),
                            )
                        );
                      }).toList(),
                      validator: (value)=>(value.toString().isEmpty)?'':null,
                      onChanged: (value){}
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: onScan,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                margin:const EdgeInsets.symmetric(
                    horizontal:20.0
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xFFfbfbfb)
                ),
                child: SvgPicture.asset(
                  "assets/icons/qr-code.svg",
                  color: const Color(0xFF747474),
                  height: 30,
                )
              ),
            ),
          ],
        ),
        const Divider(
          height: 1.2,
          thickness: 1.2,
        )
      ],
    );
  }
}
