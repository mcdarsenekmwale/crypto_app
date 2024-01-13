import 'package:crypto_app/global widgets/confirms_buy/wallet_amount_card.dart';

import 'package:flutter/material.dart';

class AmountReceived extends StatelessWidget {
  const AmountReceived({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return WalletAmountCard(
        height: 122,
        topChild: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 15.0
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('You receive',
                style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Din',
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF402ca3)
                ),
              ),
              Text('0.00000000 BTC',
                style: TextStyle(
                    fontSize: 24.0,
                    letterSpacing: 0.3,
                    fontFamily: 'Din',
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF402ca3)
                ),
              ),
            ],
          ),
        ),
        bottomChild: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 11.0
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 16.0,
              ),
              Center(
                child: Text('Quote expires in 12:21',
                  style: TextStyle(
                      fontSize: 13.0,
                      letterSpacing: 0.3,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade700
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
