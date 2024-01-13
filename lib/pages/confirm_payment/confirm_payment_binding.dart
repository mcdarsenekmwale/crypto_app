import 'package:get/get.dart';

import 'confirm_payment_controller.dart';

class ConfirmPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmPaymentController>(() => ConfirmPaymentController());
  }
}
