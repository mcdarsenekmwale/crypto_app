import 'package:get/get.dart';

import 'request_coin_controller.dart';



class RequestCoinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RequestCoinController>(() => RequestCoinController());
  }
}
