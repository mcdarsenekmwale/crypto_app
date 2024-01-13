
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExchangeButton extends StatelessWidget {
  const ExchangeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final double width =  MediaQuery.of(context).size.width;

    return Container(
      height: width*0.23,
      margin: const EdgeInsets.only(
          left: 1.0,
          right: 25
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: const LinearGradient(
              colors: [
                Color(0xFFff8800),
                Color(0xFFfe7000),
                Color(0xFFfc5d00)],
              begin: Alignment.topRight,
              end: Alignment.bottomRight
          ),
          boxShadow: const [
            BoxShadow(
                spreadRadius: 2.0,
                blurRadius: 1.0,
                color: Color(0x0fffffff),
                offset: Offset(0.0, 2.0)
            )
          ]
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: width*0.3,
            width: width*0.24,
            decoration: BoxDecoration(
                color: const Color(0xFFff9e00).withOpacity(0.7),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(60),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(60)
                )
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 30.0,
                  left: 20.0,
                  right: 25.0,
                  bottom: 15.0
              ),
              child: SvgPicture.asset(
                "assets/icons/exchange.svg",
                color: const Color(0xFFffffff),
                matchTextDirection: true,
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Exchange",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    ),
                  ),
                ],
              )
          )
        ],
      ),
    );
  }
}
