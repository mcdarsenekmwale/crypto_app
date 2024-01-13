
import 'package:crypto_app/pages/dashboard_pages/scanning/scanning_controller.dart';
import 'package:crypto_app/utils/theme_data.dart';
import 'package:crypto_app/global widgets/page_header.dart';
import 'package:crypto_app/global widgets/scanner_overlay_shape.dart';

import 'package:flutter/material.dart';
import 'package:flutter_qr_bar_scanner/qr_bar_scanner_camera.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';


class ScanningView extends GetView<ScanningController>{
  static final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  const ScanningView({Key? key}) : super(key: key);

  
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
                                  Icons.arrow_back,
                                  size: 30.0,
                                  color: Color(0xFFFFFFFF)
                              ),
                              onPressed: ()=>Get.back()
                          ),
                          Expanded(
                              child: Container()
                          ),
                          IconButton(
                              icon: const FaIcon(
                                  Icons.more_vert,
                                  size: 30.0,
                                  color: Color(0xFFFFFFFF)
                              ),
                              onPressed: (){

                              }
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
                        flex: 4,
                        child: QRBarScannerCamera(
                          key: controller.qrKey,
                          onError: (context, error) => Text(
                            error.toString(),
                            style: const TextStyle(color: Colors.red),
                          ),
                          qrCodeCallback: (code) {
                            controller. qrCallback(code!);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const SizedBox(
                                height: 30.0,
                              ),
                              Stack(
                                children: [
                                  Center(
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          bottom:40.0
                                      ),
                                      height: 250,
                                      width: 250,
                                      decoration: const ShapeDecoration(
                                        shape: ScannerOverlayShape(
                                            borderColor: Color(0xFF402ca3),
                                            borderWidth: 3.0,
                                            overlayColor: Colors.transparent
                                        ),
                                      ),
                                      child: const Center(),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: SlideTransition(
                                      position: controller.offsetAnimation,
                                      child: Container(
                                        height: 1.0,
                                        width: 245.0,
                                        color: const Color(0xFF402ca3),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40)
                                        .copyWith(bottom: 80),
                                    child: const Text('Scan the QR Code / BarCode', style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins'
                                    ),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom:40.0
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        GestureDetector(
                                          onTap: (){
                                            Get.toNamed('/my-qrcode');
                                          },
                                          child: Container(
                                              padding: const EdgeInsets.all(3.0),
                                              margin:const EdgeInsets.all(4.0),
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: const Color(0xFF7958ef),
                                                  border: Border.all(color: Colors.white, width: 2.0),
                                                  boxShadow: const [
                                                    BoxShadow(
                                                        color: Color(0xFFd8d7da),
                                                        spreadRadius: 1,
                                                        offset: Offset(0.2, 0.2)),
                                                  ]
                                              ),
                                              clipBehavior: Clip.antiAlias,
                                              child: const CircleAvatar(
                                                backgroundColor: Color(0xFFFFFFFF),
                                                child: Icon(FontAwesomeIcons.qrcode, color: Color(0xFF7958ef), size: 26,),
                                              )
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: ()=>controller.chooseFile(),
                                            iconSize: 32.0,
                                            padding: const EdgeInsets.all(3.0),
                                            color: const Color(0xFF7958ef),
                                            icon: const Icon(
                                              FontAwesomeIcons.solidImage,
                                              color: Colors.white,
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  )
                                ],
                              ),
                            ],
                          ),

                        ),
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
