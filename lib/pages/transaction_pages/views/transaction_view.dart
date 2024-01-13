import 'package:crypto_app/global models/crypto_currency.dart';
import 'package:crypto_app/global models/transactions.dart';
import 'package:crypto_app/pages/transaction_pages/controller/transaction_controller.dart';
import 'package:crypto_app/utils/theme_data.dart';
import 'package:crypto_app/global widgets/app_head.dart';
import 'package:crypto_app/global widgets/dashboard/crypto_currency_dash_card.dart';
import 'package:crypto_app/global widgets/page_header.dart';
import 'package:crypto_app/global widgets/side_bar.dart';
import 'package:crypto_app/global widgets/transactions/no_transactions_card.dart';
import 'package:crypto_app/global widgets/transactions/transaction_card.dart';
import 'package:crypto_app/global widgets/transactions/transaction_header.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TransactionsView extends GetView<TransactionsController> {

  static final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  const TransactionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width =  MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppThemeData.blueColor,
      key: _scaffoldKey,
      drawer: SideBar(
        onHideSideBar: ()=>_scaffoldKey.currentState?.openEndDrawer(),
      ),
      body: SafeArea(
          child: Column(
            children: [
              PageHeader(
                  height: 1.0,
                  head: AppHeader(
                      headText: "TRANSACTIONS",
                      subheadText: "Balance",
                      onTap: ()=>_scaffoldKey.currentState?.openDrawer()
                  ),
                  body: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TransactionHeader(
                                riseInTransactions: controller.transactionRise,
                                showTrend: true,
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              SizedBox(
                                  height: 120,
                                  width: width,
                                  child: Row(
                                    children: currencies2.map(
                                            (currency) =>
                                                CryptoCurrencyDashCard(
                                                  currency: currency,
                                                  showCircle: false,
                                                  bgColor: currency.color,
                                                )
                                    ).toList(),
                                  )
                              ),

                              const SizedBox(
                                height: 12.0,
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: Container(
                              color: AppThemeData.accentColor,
                              width: width,
                              child: Padding(
                                padding:  const EdgeInsets.symmetric(horizontal:20.0),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    Visibility(
                                      visible: transactions.isNotEmpty,
                                      child: Expanded(
                                        child: ListView.builder(
                                            itemCount: transactions.length,
                                            itemBuilder: (context, index){
                                              return TransactionCard(
                                                transaction:transactions[index],
                                                history: false,
                                                onTap: ()=>Get.toNamed('/transaction-detail/',//${transaction.id}',
                                                    arguments: transactions[index]
                                                ),
                                              );
                                            },
                                          shrinkWrap: true,
                                          physics: const BouncingScrollPhysics(),
                                        ),
                                      ),
                                      replacement: const NoTransactionMessageCard(),
                                    ),
                                  ],
                                )
                              ),
                            )
                        )
                      ],
                    ),
                  )
              ),
            ],
          )
      ),
    );
  }
}
