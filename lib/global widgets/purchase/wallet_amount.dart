
import 'package:flutter/material.dart';

class WalletAmount extends StatelessWidget {
  final String title;
  final String initialValue;
  final double currentValue;
  final Color color;

  const WalletAmount({
    Key ?key,
    required this.title,
    required this.currentValue,
    required this.initialValue,
    required this.color
  })
      :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 8.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0
          ),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,
                        style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'Din',
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade700
                        ),
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      Text("$currentValue""0",
                        style: const TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Din',
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF010101)
                        ),
                      ),
                    ],
                  ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.symmetric(horizontal: 4),
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(60.0)
                ),
                child: DropdownButtonFormField(
                    elevation: 1,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF25236d),
                    ),
                    value: initialValue,
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Color(0xFF25236d),
                    ),
                    iconSize: 30,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                    items:["BTC","USD","LTC","BHC","ETH","MWK"]
                        .map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem<String>(
                          value: value,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(value,
                              style: const TextStyle(
                                  color: Color(0xFF25236d),
                                  fontFamily: "Din",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.0
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
        ),
        const SizedBox(
          height: 8.0,
        ),
        const Divider(
          height: 1.2,
          thickness: 1.2,
        )
      ],
    );
  }
}
