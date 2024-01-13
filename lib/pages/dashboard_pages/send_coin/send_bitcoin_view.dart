import 'package:crypto_app/pages/dashboard_pages/send_coin/send_bitcoin_controller.dart';
import 'package:crypto_app/utils/theme_data.dart';
import 'package:crypto_app/global widgets/buys/bottom_buy_button.dart';
import 'package:crypto_app/global widgets/page_header.dart';
import 'package:crypto_app/global widgets/transactions/buying_transaction_card.dart';
import 'package:crypto_app/global widgets/transactions/transaction_header.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SendBitCoinView extends GetView<SendBitCoinController>{
  static final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  const SendBitCoinView({Key? key}) : super(key: key);

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
                                  onPressed: ()=>Get.back()
                              ),
                              Expanded(
                                  child: Container()
                              ),
                              const Text("BUY BITCOIN",
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
                        ],
                      ),
                    ),
                    body: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                SizedBox(
                                  height: 12
                                ),
                                Text("Balance",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF9090ff)
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                TransactionHeader(
                                  riseInTransactions: true,
                                  showTrend: true,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
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
                                    height: 20.0,
                                  ),
                                 const BuyingTransactionCard(),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text("Insufficient funds on balance",
                                      style: TextStyle(
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFff4f4f)
                                      ),
                                    ),
                                  ),

                                  InkWell(
                                    onTap: (){},
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        horizontal: 8.0
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6.0,
                                          vertical:6.0
                                      ),
                                      decoration: BoxDecoration(
                                          color: AppThemeData.accentColor,
                                        borderRadius: BorderRadius.circular(10.0),
                                        border: Border.all(  color: AppThemeData.blueColor, width: 2.0)
                                      ),
                                      child: const Text("Send Maximum Amount",
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Poppins',
                                            color: AppThemeData.blueColor
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  BottomBuyButton(
                                    text: 'CONTINUE',
                                    icon: const Icon(
                                        FontAwesomeIcons.longArrowAltRight,
                                        color: Color(0xFFFFFFFF)
                                    ),
                                    onClick: ()=>Get.toNamed('/confirm-buy'),
                                    verticalSize: 18,
                                  ),
                                  const SizedBox(
                                    height: 10.0,
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
