import 'package:get/get.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin{


  final count = 0.obs;
  increment() => count.value++;
}
