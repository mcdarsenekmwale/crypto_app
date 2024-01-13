import 'package:crypto_app/global models/transactions.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

class TransactDetailController extends GetxController with GetSingleTickerProviderStateMixin {

  final Transaction transaction =  Get.arguments;
  late AnimationController animationController;
  late Animation<Offset> offsetAnimation;

  @override
  void onInit() {
    super.onInit();

    animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )..forward();
    offsetAnimation = Tween<Offset>(
      end: Offset.zero,
      begin: const Offset(0.0, 0.3),
    ).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.fastOutSlowIn ,
    ));
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
