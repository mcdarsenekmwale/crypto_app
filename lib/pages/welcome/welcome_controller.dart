import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController with GetSingleTickerProviderStateMixin{

  late AnimationController _controller;
  late Animation<double> animation  ;

  @override
  void onInit() {
    super.onInit();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )..repeat(
        reverse: true,
      max: 1.0,
      min: 0.65

    );


    //loading animation
    animation =  CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    );

    timerDelay();
  }

  @override
  void onClose() {
    _controller.dispose();
    super.onClose();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    animation.isDismissed;
  }

  timerDelay () =>{
     Future.delayed(const Duration(seconds: 3), )
      .then((value) =>Get.offNamed('/'),)
  };

}
