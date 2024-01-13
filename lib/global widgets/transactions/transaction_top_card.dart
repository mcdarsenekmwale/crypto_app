import 'package:crypto_app/global models/crypto_currency.dart';
import 'package:crypto_app/global models/transactions.dart';

import 'package:flutter/material.dart';

class TransactionDetailTopCard extends StatelessWidget {

  final Transaction transaction;

  const TransactionDetailTopCard({
    Key ?key,
    required this.transaction
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width =  MediaQuery.of(context).size.width;
    return  Container(
      width: width,
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 10.0
      ),
      decoration: BoxDecoration(
          color: const Color(0xFFffffff),
          borderRadius: BorderRadius.circular(10.0),
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
          Text("${transaction.type}",
            style: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Din',
                fontWeight: FontWeight.w700,
                color: Colors.grey.shade700
            ),
          ),
          const SizedBox(
            height:4.0,
          ),
          Text(double.parse((transaction.value! * 1354).toStringAsFixed(8)).toString()+" ${transaction.currency}" ,
            style: TextStyle(
                fontSize: 26.0,
                fontFamily: 'Din',
                fontWeight: FontWeight.w700,
                letterSpacing: 0.5,
                color:transaction.color
            ),
          ),
          const SizedBox(
            height: 3.0,
          ),
          Text("${CryptoCurrency().calculateDollar(transaction.value!* 1.54)} USD",
            style: TextStyle(
                fontSize: 13.0,
                fontFamily: 'Din',
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade500
            ),
          ),
        ],
      ),
    );
  }
}
