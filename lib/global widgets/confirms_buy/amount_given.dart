import 'package:crypto_app/global widgets/confirms_buy/wallet_amount_card.dart';

import 'package:flutter/material.dart';

class AmountGiven extends StatelessWidget {
  const AmountGiven({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return WalletAmountCard(
        topChild: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 15.0
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('You give',
                style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Din',
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF402ca3)
                ),
              ),
              Text('\$154.50',
                style: TextStyle(
                    fontSize: 26.0,
                    fontFamily: 'Din',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.3,
                    color: Color(0xFF402ca3)
                ),
              ),
            ],
          ),
        ),
        bottomChild: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 15.0
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Amount',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Din',
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade700
                    ),
                  ),
                  RichText(text: TextSpan(
                      children: [
                        TextSpan(
                            text: "150.00",
                            style: TextStyle(
                              color: Colors.grey.shade900,
                              fontSize: 24.0,
                              letterSpacing: 0.5,
                              fontFamily: 'Din',
                              fontWeight: FontWeight.w600,
                            )
                        ),
                        TextSpan(
                            text: " USD",
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 23.0,
                              fontFamily: 'Din',
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w500,
                            )
                        ),
                      ]
                  )),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Transaction fee',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Din',
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade700
                    ),
                  ),
                  RichText(text: TextSpan(
                      children: [
                        TextSpan(
                            text: "4.50",
                            style: TextStyle(
                              color: Colors.grey.shade900,
                              fontSize: 24.0,
                              fontFamily: 'Din',
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w600,
                            )
                        ),
                        TextSpan(
                            text: " USD",
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 23.0,
                              fontFamily: 'Din',
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w500,
                            )
                        ),
                      ]
                  )),
                ],
              ),
              const SizedBox(
                height: 26.0,
              ),
            ],
          ),
        )
    );
  }
}
