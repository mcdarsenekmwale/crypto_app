import 'package:crypto_app/utils/theme_data.dart';
import 'package:crypto_app/global widgets/buys/bottom_buy_button.dart';
import 'package:crypto_app/global widgets/page_header.dart';
import 'package:crypto_app/global widgets/purchase/transaction_tile_section.dart';
import 'package:crypto_app/global widgets/transactions/transaction_header.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'confirm_payment_controller.dart';

class ConfirmPaymentView extends GetView<ConfirmPaymentController> {

  static final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  const ConfirmPaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final double width =  MediaQuery.of(context).size.width;

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppThemeData.blueColor,
      body: SafeArea(
          child: Column(
            children: [
              PageHeader(
                  height: 1.0,
                  head: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    // height: width*0.23,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            IconButton(
                                icon: const FaIcon(
                                    Icons.arrow_back,
                                    size: 30.0,
                                    color: Color(0xFFFFFFFF)
                                ),
                                onPressed: ()=>Navigator.pop(context)
                            ),
                            Expanded(
                                child: Container()
                            ),
                            const Text("CONFIRM PAYMENT",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.0,
                                  color: Colors.white
                              ),
                            ),
                            const SizedBox(
                              width: 35.0,
                            ),
                            Expanded(
                                child: Container()
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Total Balance',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Poppins',
                                color: Color(0xFF9090ff)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  body: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: TransactionHeader(
                            riseInTransactions: true,
                            showTrend: true,
                            cryptoColor: Color(0xFFf56f41),
                            currencyColor: Color(0xFFf56f41),
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Expanded(
                          child: Container(
                            color: AppThemeData.accentColor,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0
                            ),
                            width: width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 15.0,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0,
                                    vertical: 16.0
                                  ),
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
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      const TransactionTileSection(
                                          title: "Send to",
                                          height: 6.0,
                                          bottomValue: "sa7d6a2s6d7dada06dsw3d4qwd65ds6",
                                          fontSize: 17.0,
                                      ),
                                      const SizedBox(
                                        height: 15.0,
                                      ),
                                      const Divider(
                                        height: 1.2,
                                        thickness: 1.2,
                                      ),
                                      const SizedBox(
                                        height: 15.0,
                                      ),
                                      TransactionTileSection(
                                        title: "Amount",
                                        height: 6.0,
                                        subtitle:  RichText(text: TextSpan(
                                            children: [
                                              const TextSpan(
                                                  text: "2.00102000 BTC",
                                                  style: TextStyle(
                                                    color: Color(0xFF010101),
                                                    fontSize: 19.0,
                                                    fontFamily: 'Din',
                                                    letterSpacing: 0.2,
                                                    fontWeight: FontWeight.w700,
                                                  )
                                              ),
                                              TextSpan(
                                                  text: " (12.28 USD)",
                                                  style: TextStyle(
                                                    color: Colors.grey.shade700,
                                                    fontSize: 19.0,
                                                    fontFamily: 'Din',
                                                    letterSpacing: 0.2,
                                                    fontWeight: FontWeight.w600,
                                                  )
                                              ),
                                            ]
                                        )),
                                      ),
                                      const SizedBox(
                                        height: 15.0,
                                      ),
                                      const Divider(
                                        height: 1.2,
                                        thickness: 1.2,
                                      ),
                                      const SizedBox(
                                        height: 15.0,
                                      ),
                                      TransactionTileSection(
                                        title: "Transaction fee",
                                        height: 6.0,
                                        subtitle:  RichText(text: TextSpan(
                                            children: [
                                              const TextSpan(
                                                  text: "0.11102401 BTC",
                                                  style: TextStyle(
                                                    color: Color(0xFF010101),
                                                    fontSize: 19.0,
                                                    fontFamily: 'Din',
                                                    letterSpacing: 0.2,
                                                    fontWeight: FontWeight.w700,
                                                  )
                                              ),
                                              TextSpan(
                                                  text: " (0.38 USD)",
                                                  style: TextStyle(
                                                    color: Colors.grey.shade700,
                                                    fontSize: 19.0,
                                                    fontFamily: 'Din',
                                                    letterSpacing: 0.2,
                                                    fontWeight: FontWeight.w600,
                                                  )
                                              ),
                                            ]
                                        )),
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                    ],
                                  ),
                                ),
                                const Expanded(
                                  child: SizedBox(
                                    height: 8.0,
                                  ),
                                ),
                                BottomBuyButton(
                                  text: 'CONFIRM PAYMENT',
                                  icon: const Icon(
                                      FontAwesomeIcons.check,
                                      color: Color(0xFF00b25f)
                                  ),
                                  onClick: (){},
                                ),
                                const SizedBox(
                                  height: 12.0,
                                ),
                              ],
                            ),
                          ),
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
