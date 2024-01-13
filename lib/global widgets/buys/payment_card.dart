import 'package:crypto_app/utils/theme_data.dart';
import 'package:crypto_app/global widgets/purchase/payment_method.dart';
import 'package:crypto_app/global widgets/purchase/send_to_section.dart';
import 'package:crypto_app/global widgets/purchase/transaction_tile_section.dart';
import 'package:crypto_app/global widgets/purchase/wallet_amount.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final double width =  MediaQuery.of(context).size.width;
    return Expanded(
        child: Container(
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 12.0,
              ),
              const PaymentMethod(),
              const WalletAmount(
                  title: "You give",
                  currentValue: 0.00,
                  initialValue: "USD",
                  color: AppThemeData.lightBadgeColor
              ),
              const WalletAmount(
                  title: "You receive",
                  currentValue: 2.00,
                  initialValue:  "BTC",
                  color: Color(0xFFc3a69d)
              ),
              SendToSection(
                initialValue: "My bitcoin wallet",
                  onScan: (){
                        Get.toNamed('/scanning');
                  }
                  ),
              const SizedBox(
                height: 5.0,
              ),
               const TransactionTileSection(
                  title: "Transaction fee",
                  bottomValue: "1.24 USD"
              )
            ],
          ),
        )
    );
  }
}
