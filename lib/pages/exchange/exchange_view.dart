import 'package:crypto_app/pages/exchange/exchange_controller.dart';
import 'package:crypto_app/utils/theme_data.dart';
import 'package:crypto_app/global widgets/app_head.dart';
import 'package:crypto_app/global widgets/page_header.dart';
import 'package:crypto_app/global widgets/side_bar.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExchangeView extends GetView<ExchangeController> {

  static final GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>();

  const ExchangeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width =  MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF402ca3),
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
                      headText: "EXCHANGE",
                      subheadText: "Balance",
                      onTap: ()=>_scaffoldKey.currentState?.openDrawer()
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
                              width: width,
                              child: Padding(
                                  padding:  const EdgeInsets.symmetric(horizontal:20.0),
                                  child: Column(
                                    children: const [

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
