import 'package:crypto_app/pages/dashboard_pages/qr_code/qr_code_controller.dart';
import 'package:crypto_app/utils/theme_data.dart';
import 'package:crypto_app/global widgets/page_header.dart';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodeView extends GetView<QrCodeController> {
  QrCodeView({Key ?key,}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppThemeData.blueColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
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
                                  Icons.clear,
                                  size: 30.0,
                                  color: Color(0xFFFFFFFF)
                              ),
                              onPressed: (){
                                Get.back();
                                Get.back();
                              }
                          ),
                          Expanded(
                              child: Container()
                          ),
                          const Text("MY QR CODE",
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
                      const SizedBox(
                        height: 10.0,
                      )
                    ],
                  ),
                ),
                body: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Center(
                          child: SizedBox(
                              width: 260,
                              child: FutureBuilder(
                                future: controller.loadOverlayImage(),
                                builder: (ctx, snapshot) {
                                  const size = 260.0;
                                  if (!snapshot.hasData) {
                                    return Container(
                                      width: size,
                                      height: size,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.white),
                                          borderRadius: BorderRadius.circular(4.0)
                                      ),
                                      child: const Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                    );
                                  }
                                  return CustomPaint(
                                    size: const Size.square(size),
                                    painter: QrPainter(
                                      data: "panji Harawa",
                                      version: QrVersions.auto+3,
                                      color: Colors.white,
                                      gapless: true,
                                      embeddedImage: snapshot.data as ui.Image,
                                      embeddedImageStyle: QrEmbeddedImageStyle(
                                          size: const Size.square(35),
                                          color: Colors.transparent
                                      ),
                                    ),
                                  );
                                },
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40)
                            .copyWith(bottom: 80),
                        child: const Text('Scan the QR Code to add me', style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins'
                        ),),
                      ),
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }



}
