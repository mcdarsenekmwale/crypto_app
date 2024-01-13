import 'package:get/get.dart';

import '../controller/registered_transactions_controller.dart';

class TransactionRegisteredBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransactionRegisteredController>(() => TransactionRegisteredController());
  }
}
