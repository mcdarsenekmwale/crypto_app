import 'package:crypto_app/global widgets/purchase/send_to_section.dart';
import 'package:crypto_app/global widgets/purchase/transaction_tile_section.dart';
import 'package:crypto_app/global widgets/transactions/currency_exchange_section.dart';

import 'package:flutter/material.dart';

class BuyingTransactionCard extends StatelessWidget {
  const BuyingTransactionCard({Key? key}) : super(key: key);


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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 12.0,
          ),

          SendToSection(
              initialValue: "Enter Wallet Address",
              onScan: (){

              }
          ),
          const CurrencyExchangeSection(),
          const SizedBox(
            height: 15.0,
          ),
          const TransactionTileSection(
              title: "Transaction fee",
              bottomValue: "0.0005 BTC (0.03)",
              height: 8.0,
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
