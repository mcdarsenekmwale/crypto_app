import 'package:crypto_app/global models/transactions.dart';
import 'package:crypto_app/global widgets/transactions/transaction_detail_tile.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class  TransactionDetailBottomCard extends StatelessWidget {
  final Transaction transaction;

  const TransactionDetailBottomCard({
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
          const TransactionDetailTile(
              title: "To",
              subtitle: "#12312312"
          ),
          const TransactionDetailTile(
              title: "From",
              subtitle: "sa76d6ea2sds8t534df9950ds645fse6"
          ),
          TransactionDetailTile(
              title: "Date & Time",
              subtitle: DateFormat.yMMMd().add_jm().format(transaction.date!)
          ),
          TransactionDetailTile(
              title: "Transaction fee",
              subtitle: "${transaction.value} ${transaction.currency}"
          ),
          TransactionDetailTile(
              title: "Status",
              subtitle: transaction.status!,
              color: transaction.color,
          )
        ],
      ),
    );
  }
}
