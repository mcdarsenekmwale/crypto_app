import 'package:get/get.dart';

import 'scanning_controller.dart';



class ScanningBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScanningController>(() => ScanningController());
  }
}
