import 'package:crypto_app/pages/transaction_pages/controller/transaction_details_controller.dart';
import 'package:get/get.dart';


class TransactionDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransactionDetailsController>(() => TransactionDetailsController());
  }
}
