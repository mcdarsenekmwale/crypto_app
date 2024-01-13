import 'package:crypto_app/utils/theme_data.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CurrencyExchangeSection extends StatelessWidget {
  const CurrencyExchangeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 15.0
          ),
          color: const Color(0xFFffeff1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("BTC",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Din',
                          fontWeight: FontWeight.w700,
                          color: Colors.grey.shade600
                      ),
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color:AppThemeData.secondaryColor
                          ),
                          child:  SvgPicture.asset(
                            "assets/icons/bitcoin-logo.svg",
                            color: const Color(0xFFffffff),
                            height: 18.0,
                            matchTextDirection: true,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Text("0.00000000",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'Din',
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5,
                              color: Color(0xFFff4f4f)
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 30.0,
                width: 1.0,
                margin: const EdgeInsets.symmetric(
                    horizontal: 10.0
                ),
                color: Colors.grey.shade400,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("USD",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Din',
                          fontWeight: FontWeight.w700,
                          color: Colors.grey.shade600
                      ),
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    const Text("0.00",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Din',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5,
                          color: Color(0xFFff4f4f)
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(
          height: 1.2,
          thickness: 1.2,
        ),
      ],
    );
  }
}
