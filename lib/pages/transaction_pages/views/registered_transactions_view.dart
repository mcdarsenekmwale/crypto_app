import 'package:crypto_app/global models/crypto_currency.dart';
import 'package:crypto_app/pages/transaction_pages/controller/registered_transactions_controller.dart';
import 'package:crypto_app/utils/theme_data.dart';
import 'package:crypto_app/global widgets/dashboard/crypto_currency_dash_card.dart';
import 'package:crypto_app/global widgets/page_header.dart';
import 'package:crypto_app/global widgets/transactions/transaction_card.dart';
import 'package:crypto_app/global widgets/transactions/transaction_header.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../bottom_nav.dart';


class TransactionRegisteredView extends GetView<TransactionRegisteredController>  {
  static final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  const TransactionRegisteredView({Key? key}) : super(key: key);

// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {

    final double width =  MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppThemeData.blueColor,
      body:NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              pinned: true,
              snap: false,
              floating: true,
              backgroundColor: const Color(0xFF372588),
              expandedHeight: 330.0,
              title: const Text("TRANSACTION REGISTERED",
                style: TextStyle(
                    fontSize: 14.5,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                    color: Colors.white
                ),
              ),
              leading:IconButton(
                  icon: const FaIcon(
                      Icons.arrow_back,
                      size: 30.0,
                      color: Color(0xFFFFFFFF)
                  ),
                  onPressed: ()=>Get.back()
              ) ,
              flexibleSpace: FlexibleSpaceBar(
                background:Column(
                  children: [
                    PageHeader(
                      height: 1.0,
                      head: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 60.0,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Balance',
                                style: TextStyle(
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
                                  const TransactionHeader(
                                    riseInTransactions: false,
                                    showTrend: false,
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
                                                  showCircle: true,
                                                  initialColor: Colors.white,
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
                          ],
                        ),
                      ),
                      body: Container(),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                color: AppThemeData.accentColor,
                padding: const EdgeInsets.symmetric(
                    horizontal: 18.0
                ),
                width: width,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 2.0,
                    ),
                  ],
                ),
              ),
            ),

          ];
        },
        body: FutureBuilder(
          future: null,
            builder:(context, snapshot) {
              if(snapshot.hasData)  {
                return const Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Color(0xFF0D47A1)
                      ),
                    )
                );
              }
              return RefreshIndicator(
                color: const Color(0xFF0D47A1),
                onRefresh: () async {
                },
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

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
                              height: 8.0,
                            ),
                            Expanded(
                              child: AnimatedList(
                                key: TransactionRegisteredController.animatedListKey,
                                initialItemCount: controller.animatedTransactionList.length,
                                itemBuilder: (context, index, animation){
                                  return SlideTransition(
                                    position: animation.drive(controller.offsetAnimation),
                                    child: TransactionCard(
                                      transaction:controller.animatedTransactionList[index],
                                      history: false,
                                      onTap: ()=>Get.offNamed('transact-detail/scale-up',//${transaction.id}',
                                          arguments: controller.animatedTransactionList[index]
                                      ),
                                    ),
                                  );
                                },
                                shrinkWrap: true,
                                physics: const BouncingScrollPhysics(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),

      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
