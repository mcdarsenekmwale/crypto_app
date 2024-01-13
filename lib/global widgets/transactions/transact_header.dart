import 'package:crypto_app/global models/transactions.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactDetHeader extends StatelessWidget {
  final Transaction transaction;

  const TransactDetHeader({
    Key ?key,
    required this.transaction
  })
      :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width =  MediaQuery.of(context).size.width;
    return  Container(
      width: width,
      padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 13.0
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
          Text("Buy",
            style: TextStyle(
                fontSize: 15.0,
                fontFamily: 'Din',
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade600
            ),
          ),
          const SizedBox(
            height:5.0,
          ),
          Row(
            children: [
              Expanded(
                child: Text(double.parse((transaction.value! * 1354).toStringAsFixed(8)).toString()+" ${transaction.currency}" ,
                  style: TextStyle(
                      fontSize: 24.0,
                      fontFamily: 'Din',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5,
                      color:Colors.grey.shade800
                  ),
                ),
              ),
              Text(DateFormat.MMMd().add_jm().format(transaction.date!),
                style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'Din',
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade600
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),

        ],
      ),
    );
  }
}
