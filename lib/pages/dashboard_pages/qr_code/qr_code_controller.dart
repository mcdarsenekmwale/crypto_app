import 'package:get/get.dart';

import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';

class QrCodeController extends GetxController with GetSingleTickerProviderStateMixin{

  Future<ui.Image> loadOverlayImage() async {
    final completer = Completer<ui.Image>();
    final byteImage = await rootBundle.load('assets/images/founder.jpg');
    ui.decodeImageFromList(byteImage.buffer.asUint8List(), completer.complete);
    return completer.future;
  }


}
