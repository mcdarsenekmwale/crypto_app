import 'package:crypto_app/global models/transactions.dart';
import 'package:crypto_app/pages/transaction_pages/controller/transact_detail_controller.dart';
import 'package:crypto_app/utils/theme_data.dart';
import 'package:crypto_app/global widgets/page_header.dart';
import 'package:crypto_app/global widgets/transactions/transact_det_body.dart';
import 'package:crypto_app/global widgets/transactions/transact_header.dart';
import 'package:crypto_app/global widgets/transactions/transaction_card.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../bottom_nav.dart';

class TransactDetailView extends GetView<TransactDetailController> {


  static final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  const TransactDetailView({Key? key}) : super(key: key);

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
                            const Text("TRANSACTION DETAILS",
                              style: TextStyle(
                                  fontSize: 14.5,
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
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 12.0,
                                  ),
                                  SlideTransition(
                                    position: controller. offsetAnimation,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        TransactDetHeader(
                                            transaction:  controller.transaction
                                        ),
                                        const SizedBox(
                                          height: 28.0,
                                        ),
                                        Text("Transaction details",
                                          style: TextStyle(
                                              fontSize: 15.50,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w700,
                                              color: Colors.grey.shade800
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        TransactDetBody(
                                            transaction: controller.transaction
                                        ),
                                        const SizedBox(
                                          height: 20.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                  ListView.builder(
                                    itemCount: transactions.length,
                                    itemBuilder: (context, index){
                                      if( controller.transaction.id != transactions[index].id) {
                                        return TransactionCard(
                                          transaction:transactions[index],
                                          history: false,
                                          onTap: ()=>Navigator.pushNamed(context, 'transact-detail/scale-up',//${transaction.id}',
                                              arguments: transactions[index]
                                          ),
                                        );
                                      } else {
                                        return Container();
                                      }
                                    },
                                    shrinkWrap: true,
                                  ),
                                ],
                              ),
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
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }

}
