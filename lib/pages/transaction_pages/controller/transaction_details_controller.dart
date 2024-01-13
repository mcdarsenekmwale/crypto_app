import 'package:crypto_app/global models/transactions.dart';
import 'package:get/get.dart';

class TransactionDetailsController extends GetxController with GetSingleTickerProviderStateMixin{

  final Transaction transaction = Get.arguments;


  final count = 0.obs;
  increment() => count.value++;
}
