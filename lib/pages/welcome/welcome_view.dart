import 'package:crypto_app/utils/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'welcome_controller.dart';

class WelcomeView extends  GetView<WelcomeController>  {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeData.blueColor,
      body:  Column(
        children: [
          SizedBox(
            height: Get.size.width *0.35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                '',
                style: TextStyle(
                    color: AppThemeData.secondaryColor,
                    fontFamily: 'Poppins',
                    fontSize: 40.0,
                    fontWeight: FontWeight.w800
                ),
              )
            ],
          ),

          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: Get.size.width *0.2,
                ),
                GestureDetector(
                  onTap: ()=>{},
                  child: ScaleTransition(
                    scale:controller.animation,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      padding: const EdgeInsets.all(18.0),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppThemeData.secondaryColor,
                      ),
                      child: Icon(
                        // FontAwesomeIcons.dollarSign,
                        Icons.attach_money_outlined,
                        color: AppThemeData.blueColor,
                        size: Get.size.width * 0.55,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
  