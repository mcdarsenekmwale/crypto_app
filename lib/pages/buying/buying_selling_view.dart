// ignore_for_file: constant_identifier_names

import 'package:crypto_app/global models/transactions.dart';
import 'package:crypto_app/pages/buying/buying_selling_controller.dart';
import 'package:crypto_app/pages/buying/components/history_component.dart';
import 'package:crypto_app/pages/buying/components/purchase_component.dart';
import 'package:crypto_app/utils/theme_data.dart';
import 'package:crypto_app/global widgets/buys/purchase_section_header.dart';
import 'package:crypto_app/global widgets/buys/toggle_button.dart';
import 'package:crypto_app/global widgets/page_header.dart';
import 'package:crypto_app/global widgets/verification/verification_body.dart';
import 'package:crypto_app/global widgets/verification/verification_head.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class BuyingSellingView extends GetView<BuyingSellingController>{
  static final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  static const Key pPurchase_key = PageStorageKey('spPurchase');
  static const Key pHistory_key = PageStorageKey('spHistory');

 const BuyingSellingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width =  MediaQuery.of(context).size.width;

    return Obx(()=>
        Scaffold(
        backgroundColor: const Color(0xFF402ca3),
        key: _scaffoldKey,
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
                              const Text("BUY",
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
                          ToggleButton(
                              isActive: controller.isActive.value,
                              options:const ["Purchase","History"],
                              onClick: (v) async {

                                controller.isActive.value =!controller.isActive.value;

                              },
                          ),
                        ],
                      ),
                    ),
                    body:
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Visibility(
                            visible: histories.isNotEmpty,
                            replacement: const VerificationHead(),
                            child: PurchaseSectionHeader(
                                visible: !controller.isActive.value
                            ),
                          ),

                          Expanded(
                              child: Container(
                                color: AppThemeData.accentColor,
                                width: width,
                                child: Visibility(
                                  visible: histories.isNotEmpty,
                                  replacement: const VerificationBody(),
                                  child: PageStorage(
                                      bucket: controller. pageBucket,
                                      child: !controller.isActive.value
                                          ?AnimatedContainer(
                                            duration: const Duration(milliseconds: 500),
                                            curve: Curves.fastLinearToSlowEaseIn,

                                          transformAlignment:  AlignmentGeometry.lerp(
                                              AlignmentDirectional.topCenter,
                                              AlignmentDirectional.bottomCenter,
                                              1.0
                                          ),
                                            child: const PurchaseComponent(key: pPurchase_key,)
                                          )
                                          :AnimatedContainer(
                                              duration: const Duration(milliseconds: 500),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                            transformAlignment:  AlignmentGeometry.lerp(
                                              AlignmentDirectional.topCenter,
                                              AlignmentDirectional.bottomCenter,
                                              1.0
                                          ),
                                              child: const HistoryComponent(key: pHistory_key,)
                                          )
                                  ),
                                )
                              )
                          )
                        ],
                      ),
                    )
                ),
              ],
            )
        ),
      ),
    );
  }
}
