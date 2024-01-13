import 'package:image_picker/image_picker.dart';
import 'package:crypto_app/utils/constants.dart';
import 'package:flutter_qr_bar_scanner/qr_bar_scanner_camera.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';


class ScanningController extends GetxController with GetSingleTickerProviderStateMixin{

  final GlobalKey<QRBarScannerCameraState> qrKey = GlobalKey<QRBarScannerCameraState>();
  var qrText = '';
  var flashState = flashOn;
  var cameraState = frontCamera;
  late AnimationController animationController;
  late Animation<Offset> offsetAnimation;
  final imagePicker = ImagePicker();

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(
        reverse: false
    );
    offsetAnimation = animationController.drive(Tween<Offset>(
      end: const Offset(0.0, 150.0),
      begin: const Offset(0.0, 110.0),
    ).chain(CurveTween(curve: Curves.decelerate)));

  }


  qrCallback(String code) {

      qrText = code;
    if(qrText.isNotEmpty) {
      Vibration.vibrate(duration: 50);
    }
  }

  chooseFile() async{
  // String barcode =  (bytes);

  // qrText = barcode;
  if(qrText.isNotEmpty) {
    Vibration.vibrate(duration: 50);
  }
}

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

}
