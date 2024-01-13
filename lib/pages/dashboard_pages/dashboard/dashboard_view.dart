import 'package:crypto_app/global models/crypto_currency.dart';
import 'package:crypto_app/pages/dashboard_pages/dashboard/dashboard_controller.dart';
import 'package:crypto_app/pages/transaction_pages/bottom_nav.dart';
import 'package:crypto_app/utils/theme_data.dart';
import 'package:crypto_app/global widgets/dashboard/crypto_charge_status.dart';
import 'package:crypto_app/global widgets/dashboard/crypto_currency_dash_card.dart';
import 'package:crypto_app/global widgets/dashboard/pie_chart_card.dart';
import 'package:crypto_app/global widgets/home/currency_right_trend.dart';
import 'package:crypto_app/global widgets/page_header.dart';
import 'package:crypto_app/global widgets/side_bar.dart';
import 'package:fl_chart/fl_chart.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';


class DashBoardView extends GetView<DashboardController> {

  static final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  const DashBoardView({Key? key}) : super(key: key);


    // [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
    @override
    Widget build(BuildContext context) {
      final double width = Get
          .size
          .width;
      return Scaffold(
        key: _scaffoldKey,
        drawer: SideBar(
          onHideSideBar: ()=>_scaffoldKey.currentState?.openEndDrawer(),
        ),
        backgroundColor: AppThemeData.blueColor,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                pinned: true,
                snap: false,
                floating: true,
                backgroundColor: const Color(0xFF372588),
                expandedHeight: Get.size.height*0.425,
                centerTitle: true,
                title: const Text("DASHBOARD",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                      color: Colors.white
                  ),
                ),
                leading:GestureDetector(
                  onTap:()=>_scaffoldKey.currentState?.openDrawer(),
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(
                      "assets/icons/left-align_1.svg",
                      height: 17.0,
                      width: 25.0,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                flexibleSpace: Obx(
                      ()=> FlexibleSpaceBar(
                    background: Column(
                      children: [
                        PageHeader(
                          height: 1.0,
                          head: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 60.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(controller.headerName.value,
                                  style: const TextStyle(
                                      fontSize: 15.0,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF9090ff)
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            RichText(text: const TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text: "\$ ",
                                                      style: TextStyle(
                                                        color: Color(0xFF9090ff),
                                                        fontSize: 32.0,
                                                        fontFamily: 'Din',
                                                        fontWeight: FontWeight.w700,
                                                      )
                                                  ),
                                                  TextSpan(
                                                      text: "18,659",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 32.0,
                                                        fontFamily: 'Din',
                                                        letterSpacing: 1.0,
                                                        fontWeight: FontWeight.w700,
                                                      )
                                                  ),
                                                  TextSpan(
                                                      text: ".55",
                                                      style: TextStyle(
                                                        color: Color(0xFF9090ff),
                                                        fontSize: 32.0,
                                                        fontFamily: 'Din',
                                                        letterSpacing: 1.0,
                                                        fontWeight: FontWeight.w700,
                                                      )
                                                  ),
                                                ]
                                            )),
                                            RichText(text: const TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text: "2.00102000",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18.0,
                                                        fontFamily: 'Din',
                                                        letterSpacing: 0.5,
                                                        fontWeight: FontWeight.w500,
                                                      )
                                                  ),
                                                  TextSpan(
                                                      text: " BTC",
                                                      style: TextStyle(
                                                        color: Color(0xFF9090ff),
                                                        fontSize: 18.0,
                                                        fontFamily: 'Din',
                                                        letterSpacing: 0.5,
                                                        fontWeight: FontWeight.w500,
                                                      )
                                                  ),
                                                ]
                                            )),
                                          ],
                                        ),
                                        Expanded(
                                            child: Container()
                                        ),
                                        PieChartCard(
                                          touchedIndex: 3,//controller.touchedIndex.value,
                                          touchCallBack: (FlTouchEvent event, pieTouchResponse){
                                              if (pieTouchResponse?.touchedSection is FlLongPressEnd ||
                                                  pieTouchResponse?.touchedSection is FlPanEndEvent) {
                                                controller.touchedIndex.value = -1;
                                              } else {
                                                controller.touchedIndex.value = pieTouchResponse!.touchedSection!.touchedSectionIndex;
                                              }

                                          },
                                        ),
                                        const SizedBox(
                                          width: 22.0,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 40.0,
                                    ),
                                    SizedBox(
                                        height: 120,
                                        width: width,
                                        child: Row(
                                          children: currencies.map(
                                                  (currency) =>
                                                  CryptoCurrencyDashCard(
                                                    currency: currency,
                                                    initialColor: Colors.white,
                                                    onTap: ()=>Get.toNamed( 'registered-transactions/',//${transaction.id}',
                                                        arguments: currency
                                                    ),
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
                            ],
                          ),
                          body: Container(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  color: AppThemeData.accentColor,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0
                  ),
                  width: width,
                  child: const Row(
                    children: [
                      Expanded(child: Divider(color: Colors.grey,thickness: 0.5,)),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('26th price charges',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Din',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF838384)
                          ),
                        ),
                      ),
                      Expanded(child: Divider(color: Colors.grey,thickness: 0.5,))
                    ],
                  ),
                ),
              ),

            ];
          },
          body: FutureBuilder(
            future: null,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return const Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(Color(0xFF0D47A1)
                        ),
                      )
                  );
                }
                return RefreshIndicator(
                  color: const Color(0xFF0D47A1),
                  onRefresh: () async {},
                  child: Column(
                    children: [
                      Expanded(
                          child: Container(
                            color: AppThemeData.accentColor,
                            padding: const EdgeInsets.symmetric(horizontal:18.0),
                            width: width,
                            child: Column(
                              children: [
                                Expanded(
                                  child: ListView(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    addAutomaticKeepAlives: true,
                                    children: [
                                      const SizedBox(
                                        height: 8.0,
                                      ),
                                      CryptoChargeStatusCard(
                                          fgColor: const Color(0xFFf55100),
                                          icon: "bitcoin-logo.svg",
                                          title: 'Bitcoin',
                                          subtitle: '\$6,544.678',
                                          animation: controller.offsetCardAnimation,
                                          child: const Expanded(
                                            child: CurrencyRightTrend(
                                              rise: true,
                                              value: "+ 3.678%",
                                              color: Color(0xFF030303),
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
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      CryptoChargeStatusCard(
                                          fgColor: const Color(0xFF007dff),
                                          icon: "litecoin_1.svg",
                                          title: 'Litecoin',
                                          subtitle: '\$15.678',
                                          animation: controller.offsetCardAnimation,
                                          child: const Expanded(
                                            child: CurrencyRightTrend(
                                              color: Color(0xFF030303),
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
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      CryptoChargeStatusCard(
                                          fgColor: const Color(0xFF00bf34),
                                          icon: "bitcoin-logo.svg",
                                          title: 'Bitcoin Cash',
                                          subtitle: '\$3,387.678',
                                          animation: controller.offsetCardAnimation,
                                          child: const Expanded(
                                            child: CurrencyRightTrend(
                                              rise: true,
                                              value: "+ 3.678%",
                                              color: Color(0xFF030303),
                                              lineColor: Color(0xFF00bf34),
                                              flSpotsData: [
                                                FlSpot(1, 0.5),
                                                FlSpot(2, 1.5),
                                                FlSpot(3, 1.9),
                                                FlSpot(4, 1.8),
                                                FlSpot(5, 1.5),
                                                FlSpot(6, 1.8),
                                                FlSpot(7, 3.5),
                                                FlSpot(8, 3.8),
                                                FlSpot(10, 4.5),
                                                FlSpot(11, 5.3),
                                                FlSpot(12, 5.5),
                                                FlSpot(13, 5.8),
                                              ],
                                            ),
                                          )
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      CryptoChargeStatusCard(
                                          fgColor: const Color(0xFF007dff),
                                          icon: "bitcoin-logo.svg",
                                          title: 'Bitcoin',
                                          subtitle: '\$75.678',
                                          animation: controller.offsetCardAnimation,
                                          child: const Expanded(
                                            child: CurrencyRightTrend(
                                              color: Color(0xFF030303),
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
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      CryptoChargeStatusCard(
                                          fgColor: const Color(0xFF007dff),
                                          icon: "litecoin_1.svg",
                                          title: 'Litecoin',
                                          subtitle: '\$895.678',
                                          animation: controller.offsetCardAnimation,
                                          tradeType: "SELL",
                                          child: const Expanded(
                                            child: CurrencyRightTrend(
                                              color: Color(0xFF030303),
                                              rise: false,
                                              value: "- 1.3469%",
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
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      CryptoChargeStatusCard(
                                          fgColor: const Color(0xFF00bf34),
                                          icon: "bitcoin-logo.svg",
                                          title: 'Bitcoin',
                                          subtitle: '\$15.678',
                                          animation: controller.offsetCardAnimation,
                                          child: const Expanded(
                                            child: CurrencyRightTrend(
                                              color: Color(0xFF030303),
                                              rise: true,
                                              value: "+ 4.3469%",
                                              lineColor: Color(0xFF00bf34),
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
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      CryptoChargeStatusCard(
                                          fgColor: const Color(0xFFc0382e),
                                          icon: "litecoin_1.svg",
                                          title: 'Litecoin',
                                          subtitle: '\$15.678',
                                          animation: controller.offsetCardAnimation,
                                          tradeType: "SELL",
                                          child: const Expanded(
                                            child: CurrencyRightTrend(
                                              color: Color(0xFF030303),
                                              rise: true,
                                              value: "+ 14.3469%",
                                              lineColor: Color(0xFF00bf34),
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
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                      )
                    ],
                  ),
                );
              }),

        ),
        bottomNavigationBar: const BottomNavigationWidget()
      );
    }
}
