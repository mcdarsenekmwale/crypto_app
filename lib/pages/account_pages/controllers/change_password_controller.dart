import 'package:get/get.dart';

class ChangePasswordController extends GetxController with GetSingleTickerProviderStateMixin{


  final count = 0.obs;
  increment() => count.value++;
}
