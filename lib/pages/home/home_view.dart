import 'package:crypto_app/pages/home/home_controller.dart';
import 'package:crypto_app/utils/theme_data.dart';
import 'package:crypto_app/global widgets/home/crypto_card.dart';
import 'package:crypto_app/global widgets/home/currency_right_trend.dart';
import 'package:crypto_app/global widgets/home/home_trade_card.dart';
import 'package:crypto_app/global widgets/page_header.dart';
import 'package:fl_chart/fl_chart.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController>{
  static final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //
    final double width =  MediaQuery.of(context).size.width;

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xFF402ca3),
      body: SafeArea(
          child: Column(
            children: [
              PageHeader(
                  head: Container(
                    height: 65,
                    width: 65,
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppThemeData.primaryColor),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/founder.jpg'),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  body: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text('Hi, Harawa',
                            style: TextStyle(
                                fontSize: 28.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                            ),
                          ),
                          const SizedBox(
                            height: 1.0,
                          ),
                          const Text('What would you like to work with?',
                            style: TextStyle(
                                fontSize: 17.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                            ),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Row(
                            children: [
                              HomeTradeCard(
                                  title: "Wallets",
                                  subtitle: "You can start use wallets",
                                  colors: const [
                                    Color(0xFF1eb8ee),
                                    Color(0xFF1789ff),
                                    Color(0xFF115ede)
                                  ],
                                  iconBoxColor: const Color(0xFF65d7f9),
                                  icon: "wallet.svg",
                                  onTap: () {
                                    Get.offNamed('/');
                                  }
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              HomeTradeCard(
                                  title: "Exchange",
                                  subtitle: "You can start use exchange",
                                  colors: const [
                                    Color(0xFFff8800),
                                    Color(0xFFfe7000),
                                    Color(0xFFfc5d00)
                                  ],
                                  iconBoxColor: const Color(0xFFff9e00),
                                  icon: "exchange.svg", onTap: () {  },
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                            const CryptoCard(
                              logoForeColor: Color(0xFFf55100),
                              logoIcon: "bitcoin-logo.svg",
                              title: 'Bitcoin',
                              subtitle: '\$6,544.678',
                              trailing: Expanded(
                                child: CurrencyRightTrend(
                                  rise: true,
                                  value: "+ 3.678%",
                                  lineColor: Color(0xFF00bf34),
                                  flSpotsData: [
                                    FlSpot(1, 0.5),
                                    FlSpot(2, 0.8),
                                    FlSpot(3, 1.0),
                                    FlSpot(4, 1.8),
                                    FlSpot(5, 1.1),
                                    FlSpot(6, 1.5),
                                    FlSpot(7, 3.0),
                                    FlSpot(8, 2.5),
                                    FlSpot(10, 2.8),
                                    FlSpot(11, 3.0),
                                    FlSpot(12, 3.0),
                                    FlSpot(13, 4.5),
                                  ],
                                ),
                              )
                          ),
                          Divider(
                            indent: width*0.18,
                            thickness: 0.5,
                            color: const Color(0xFF4e3adb),
                          ),
                           const CryptoCard(
                              logoForeColor: Color(0xFF818bb4),
                              logoBackColor: Color(0xFFfcfcfc),
                              logoIcon: "ethereum_2.svg",
                              title: 'Etherium',
                              subtitle: '\$832.23',
                              trailing: Expanded(
                                child: CurrencyRightTrend(
                                  rise: false,
                                  value: "- 4.3469%",
                                  lineColor: Color(0xFFc0382e),
                                  flSpotsData: [
                                    FlSpot(1, 0.5),
                                    FlSpot(2, 1.5),
                                    FlSpot(3, 1.9),
                                    FlSpot(4, 2.8),
                                    FlSpot(5, 3.5),
                                    FlSpot(6, 4.5),
                                    FlSpot(7, 4.6),
                                    FlSpot(8, 4.5),
                                    FlSpot(10, 2.8),
                                    FlSpot(11, 3.0),
                                    FlSpot(12, 3.5),
                                    FlSpot(13, 1.5),
                                  ],
                                ),
                              )
                          ),
                          Divider(
                            indent: width*0.18,
                            thickness: 0.5,
                            color: const Color(0xFF4e3adb),
                          ),
                           const CryptoCard(
                              logoForeColor: Color(0xFFc0c0c0),
                              logoIcon: "litecoin_1.svg",
                              title: 'Bitcoin',
                              subtitle: '\$6,544.678',
                              trailing: Expanded(
                                child: CurrencyRightTrend(
                                  rise: true,
                                  value: "+ 5.0199%",
                                  lineColor: Color(0xFF00bf34),
                                  flSpotsData: [
                                    FlSpot(1, 0.5),
                                    FlSpot(2, 1.5),
                                    FlSpot(3, 1.9),
                                    FlSpot(4, 1.8),
                                    FlSpot(5, 1.5),
                                    FlSpot(6, 1.6),
                                    FlSpot(7, 2.5),
                                    FlSpot(8, 3.2),
                                    FlSpot(10, 3.8),
                                    FlSpot(11, 4.0),
                                    FlSpot(12, 4.5),
                                    FlSpot(13, 5.0),
                                  ],
                                ),
                              )
                          ),
                          Divider(
                            indent: width*0.18,
                            thickness: 0.5,
                            color: const Color(0xFF4e3adb),
                          ),
                           const CryptoCard(
                              logoForeColor: Color(0xFFf9b100),
                              logoBackColor: Color(0xFFfcfcfc),
                              logoIcon: "bitcoin-logo.svg",
                              title: 'Bitcoin Cash',
                              subtitle: '\$6,544.678',
                              trailing: Expanded(
                                child: CurrencyRightTrend(
                                  rise: false,
                                  value: "- 10.348%",
                                  lineColor: Color(0xFFc0382e),
                                  flSpotsData: [
                                    FlSpot(1, 1.5),
                                    FlSpot(2, 2.5),
                                    FlSpot(3, 1.9),
                                    FlSpot(4, 2.8),
                                    FlSpot(5, 3.8),
                                    FlSpot(6, 4.5),
                                    FlSpot(7, 4.8),
                                    FlSpot(8, 4.9),
                                    FlSpot(10, 4.5),
                                    FlSpot(11, 4.0),
                                    FlSpot(12, 3.5),
                                    FlSpot(13, 2.5),
                                  ],
                                ),
                              )
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                        ],
                      ),
                    ),
                  )
              ),
            ],
          )
      ),
    );
  }
}
