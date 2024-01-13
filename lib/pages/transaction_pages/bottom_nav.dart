import 'package:crypto_app/global widgets/dashboard/bottom_action_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BottomNavigationWidget extends StatelessWidget{
  const BottomNavigationWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  BottomActionBar(
        onSend: ()=>Get.toNamed( '/send-bitcoin'),
        onRequest: ()=>Get.toNamed( '/request-bitcoin'),
        onScan: ()=>Get.toNamed('/scanning')
    );
  }


}