import 'package:crypto_app/global models/crypto_currency.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CryptoCurrencyDashCard extends StatelessWidget {
  final CryptoCurrency? currency;
  final Color? bgColor;
  final Color? initialColor;
  final bool? showCircle;
  final VoidCallback? onTap;

  const CryptoCurrencyDashCard({
    Key ?key,
    required this.currency,
    this.bgColor = const Color(0xFF33339c),
    this.showCircle = true,
    this.initialColor = const Color(0xFF9090ff),
    this.onTap
  }) :  assert(currency != null),
        assert(bgColor != null),
        assert(initialColor != null),
        assert(showCircle != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 2.5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: const Color(0xFF5526e8),
              boxShadow: const [
                BoxShadow(
                    spreadRadius: 2.0,
                    blurRadius: 1.0,
                    color: Color(0xFF3b25ad),
                    offset: Offset(0.0, 2.0)
                )
              ]
          ),
          child: Padding(
            padding:  const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:bgColor
                      ),
                      child:  SvgPicture.asset(
                        "assets/icons/${currency!.logo}",
                        color: const Color(0xFFffffff),
                        height: 18.0,
                        matchTextDirection: true,
                      ),
                    ),

                    Row(
                      children: [
                        Visibility(
                          visible: showCircle!,
                          child: Container(
                            padding: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currency!.color,
                                border: Border.all(color: Colors.white)
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 3.0,
                        ),
                        Text('${currency!.percentage}%',
                          style: const TextStyle(
                              fontSize: 13.0,
                              fontFamily: 'Din',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFFFFFFF)
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Expanded(child: Container()),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(text: TextSpan(
                        children: [
                          TextSpan(
                              text: "${currency!.value}000",
                              style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'Din',
                                letterSpacing: 0.1,
                                fontWeight: FontWeight.w500,
                              )
                          ),
                          TextSpan(
                              text: " ${currency!.initial}",
                              style: TextStyle(
                                color:initialColor,
                                fontFamily: 'Poppins',
                                letterSpacing: 0.3,
                                fontWeight: FontWeight.w500,
                              )
                          ),
                        ]
                    )),
                    Text('${CryptoCurrency().calculateDollar(currency!.value!)} USD',
                      style: const TextStyle(
                          fontSize: 13.0,
                          fontFamily: 'Din',
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF9090ff)
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
