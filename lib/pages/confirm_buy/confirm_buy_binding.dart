import 'package:get/get.dart';

import 'confirm_buy_controller.dart';

class ConfirmBuyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmBuyController>(() => ConfirmBuyController());
  }
}
