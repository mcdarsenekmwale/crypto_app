
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';

class WalletQrAddressCard extends StatelessWidget {
  final String? myAddress;

  const WalletQrAddressCard({
    Key ?key,
    required this.myAddress
  })
      : assert(myAddress != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    final double width =  MediaQuery.of(context).size.width;
    return  Container(
      width: width,
      decoration: BoxDecoration(
          color: const Color(0xFFffffff),
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: const [
            BoxShadow(
                spreadRadius: 1.0,
                blurRadius: 1.0,
                color: Color(0xFFd0dFdf),
                offset: Offset(1.0, 2.0)
            )
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30.0,
          ),
          Text("Tap to copy your wallet address",
            style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                color: Colors.grey.shade800
            ),
          ),

          const SizedBox(
            height: 23.0,
          ),
          CustomPaint(
            size: const Size.square(150.0),
            painter: QrPainter(
              data: myAddress!,
              version: QrVersions.auto,
              color: const Color(0xFFa19af5),
              gapless: true,
            ),
          ),
          const SizedBox(
            height: 23.0,
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color(0xFFf5f8f8),
                border: Border.all(
                    color: const Color(0xFFecf8f8),
                    width: 2.0
                ),
                borderRadius: BorderRadius.circular(10.0)
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 13.0,
              horizontal: 20.0
            ),
            child: SelectableText(myAddress!,
              style: const TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  color: Color(0xFFa19af5)
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            onTap: (){
              Clipboard.setData(ClipboardData(text: myAddress.toString()));
            },
            child: Text("copy link",
              style: TextStyle(
                  fontSize: 12.0,
                  fontFamily: 'Poppins',
                  color: Colors.grey.shade500
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }
}
