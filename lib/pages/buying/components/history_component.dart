import 'package:crypto_app/global models/transactions.dart';
import 'package:crypto_app/utils/theme_data.dart';
import 'package:crypto_app/global widgets/transactions/transaction_card.dart';

import 'package:flutter/material.dart';

class HistoryComponent extends StatefulWidget {

  const HistoryComponent({Key ?key, }) : super(key: key);

  @override
  _HistoryComponentState createState() => _HistoryComponentState();
}

class _HistoryComponentState extends State<HistoryComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeData.accentColor,
      body: Padding(
          padding:  const EdgeInsets.symmetric(horizontal:20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 6.0,
                  bottom: 3.0
                ),
                child: Text('History transactions',
                  style: TextStyle(
                      fontSize: 15.0,
                      letterSpacing: 0.5,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF151515)
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: histories.length,
                  itemBuilder: (context, index){
                    return TransactionCard(
                        transaction:histories[index],
                        padding: 15.0,
                        size:15.0 ,
                        history: true,
                    );
                  },
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                ),
              ),
            ],
          )
      ),
    );
  }
}
