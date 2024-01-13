import 'package:get/get.dart';

import 'buying_selling_controller.dart';

class BuyingSellingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BuyingSellingController>(() => BuyingSellingController());
  }
}
