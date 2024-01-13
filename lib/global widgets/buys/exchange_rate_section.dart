
import 'package:flutter/material.dart';


class ExchangeRateSection extends StatelessWidget {
  final bool? visible;

  const ExchangeRateSection({
    Key ?key,
       this.visible = false
  }) :  assert(visible != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible!,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(text: const TextSpan(
                    children: [
                      TextSpan(
                          text: "1",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontFamily: 'Poppins',
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w500,
                          )
                      ),
                      TextSpan(
                          text: " BTC",
                          style: TextStyle(
                            color: Color(0xFF9090ff),
                            fontSize: 30.0,
                            fontFamily: 'Poppins',
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w500,
                          )
                      ),
                    ]
                )),
                RichText(text: const TextSpan(
                    children: [
                      TextSpan(
                          text: "  =  ",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 30.0,
                            fontFamily: 'Poppins',
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w500,
                          )
                      ),
                      TextSpan(
                          text: "14,659.55",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontFamily: 'Poppins',
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.w600,
                          )
                      ),
                      TextSpan(
                          text: " USD",
                          style: TextStyle(
                            color: Color(0xFF9090ff),
                            fontSize: 30.0,
                            fontFamily: 'Poppins',
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.w600,
                          )
                      ),
                    ]
                )),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
      replacement: const SizedBox(
        height: 22.0,
      ),
    );
  }
}
