import 'package:get/get.dart';
import 'package:flutter/material.dart';


class DashboardController extends GetxController with GetSingleTickerProviderStateMixin{

 late AnimationController animationCardController;
 late Animation<Offset> offsetCardAnimation;

 var touchedIndex = 3.obs;
 Rx<String> headerName = Rx("Total Balance");

 @override
 void onInit() {
   // TODO: implement onInit
   super.onInit();
   animationCardController = AnimationController(
     duration: const Duration(seconds: 10),
     vsync: this,
   )
     ..repeat(reverse: false,);
   offsetCardAnimation = Tween<Offset>(
     end: const Offset(1, 0.0),
     begin: const Offset(-1, 0.0),
   ).animate(CurvedAnimation(
     parent: animationCardController,
     curve: Curves.slowMiddle,
   ));
 }

 @override
 void dispose() {
   super.dispose();
   animationCardController.dispose();
 }

@override
  void onClose() {
   animationCardController.dispose();
    super.onClose();
  }
}
