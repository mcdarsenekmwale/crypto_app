import 'package:get/get.dart';

import 'send_bitcoin_controller.dart';



class SendBitCoinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SendBitCoinController>(() => SendBitCoinController());
  }
}
