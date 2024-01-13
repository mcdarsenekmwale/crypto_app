import 'package:crypto_app/global models/transactions.dart';
import 'package:crypto_app/global widgets/transactions/transaction_detail_tile.dart';

import 'package:flutter/material.dart';

class TransactDetBody extends StatelessWidget {
  final Transaction? transaction;

  const TransactDetBody({
    Key ?key,
    required this.transaction
  })
      : assert(transaction != null),
        super(key: key);

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
          TransactionDetailTile(
            title: "Transaction ID",
            subtitle: "#12312312",
            color: Colors.grey.shade700,
            subTitleFontSize: 20.0 ,
          ),
          TransactionDetailTile(
            title: "Exchange",
            subtitle: "\$ 6,234.12",
            color: Colors.grey.shade700,
            subTitleFontSize: 20.0 ,
          ),
          TransactionDetailTile(
            title: "Amount",
            subtitle: '\$ 100.00',
            color: Colors.grey.shade700,
            subTitleFontSize: 20.0 ,
          ),
          TransactionDetailTile(
            title: "Transaction fee",
            subtitle: "\$ 3.00",
            color: Colors.grey.shade700,
            subTitleFontSize: 20.0 ,
          ),
          const TransactionDetailTile(
            title: "You give",
            subtitle: "\$ 103.00",
            subTitleFontSize: 20.0 ,
          ),
          TransactionDetailTile(
            title: "Transaction Status",
            subtitle: transaction!.status!,
            color: transaction!.color,
            subTitleFontSize: 20.0 ,
          )
        ],
      ),
    );
  }
}
