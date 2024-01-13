import 'package:get/get.dart';

import '../controller/transact_detail_controller.dart';

class TransactDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransactDetailController>(() => TransactDetailController());
  }
}
