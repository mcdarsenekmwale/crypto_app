import 'package:crypto_app/pages/settings/settings_controller.dart';
import 'package:crypto_app/utils/theme_data.dart';
import 'package:crypto_app/global widgets/page_header.dart';
import 'package:crypto_app/global widgets/settings/settings_tile.dart';
import 'package:crypto_app/global widgets/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';


class SettingsView extends GetView<SettingsController>{
  static final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  const SettingsView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final double width =  MediaQuery.of(context).size.width;

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppThemeData.blueColor,
      drawer: SideBar(
        onHideSideBar: ()=>_scaffoldKey.currentState?.openEndDrawer(),
      ),
      body: SafeArea(
          child: Obx(()=>
              Column(
              children: [
                PageHeader(
                    height: 1.0,
                    head: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: ()=>_scaffoldKey.currentState?.openDrawer(),
                                behavior: HitTestBehavior.opaque,
                                child: Container(
                                  padding: const EdgeInsets.all(10.0),
                                  child: SvgPicture.asset(
                                    "assets/icons/left-align_1.svg",
                                    height: 17.0,
                                    width: 25.0,
                                    color: const Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: Container()
                              ),
                              const Text("SETTINGS",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.0,
                                    color: Colors.white
                                ),
                              ),
                              const SizedBox(
                                width: 35.0,
                              ),
                              Expanded(
                                  child: Container()
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 13.0,
                          )
                        ],
                      ),
                    ),
                    body: Expanded(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 8.0,
                          ),
                          Expanded(
                            child: Container(
                              color: AppThemeData.accentColor,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18.0
                              ),
                              width: width,
                              child: ListView(
                                children: [

                                  //PERSONAL INFORMATION CATEGORY
                                  //START ****
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Text('Personal Info',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF838384)
                                        ),
                                      ),
                                      SettingsTile(
                                          title: 'Verification',
                                          icon: FontAwesomeIcons.file
                                      ),
                                      SettingsTile(
                                          title: 'Change email',
                                          icon: FontAwesomeIcons.envelopeOpen
                                      ),
                                    ],
                                  ),
                                  //END ****

                                  //ACCOUNT INFORMATION CATEGORY
                                  //START ****
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 15.0,
                                      ),
                                      const Text('Account',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF838384)
                                        ),
                                      ),
                                      SettingsTile(
                                          title: 'Change password',
                                          icon: Icons.lock_outline,
                                          iconSize: 27,
                                          onTap: ()=>Get.toNamed('/change-password'),
                                      ),
                                      const SettingsTile(
                                          title: 'Language',
                                          icon: Icons.sms,
                                          iconSize: 27,
                                      ),
                                      SettingsTile(
                                          title: 'Currency',
                                          icon: Icons.monetization_on,
                                          iconSize: 27,
                                          trailing: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal:8.0
                                            ),
                                            child: Text('USD',
                                              style: TextStyle(
                                                  color: Colors.grey.shade600,
                                                  fontSize: 16.0,
                                                  fontFamily: 'Din',
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ),
                                      ),
                                      SettingsTile(
                                        title: 'Pin',
                                        icon: Icons.straighten,
                                        iconSize: 27.0,
                                        verticalPad: 0.0,
                                        trailing:Switch(
                                            value: controller.isPinned.value,
                                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                            activeColor:AppThemeData.blueColor,
                                            onChanged: (v){
                                              controller.isPinned.value =v;
                                            }
                                        ) ,
                                      ),
                                      const SettingsTile(
                                        title: 'Change pin',
                                        icon: Icons.sync,
                                        iconSize: 27,
                                      ),
                                    ],
                                  ),
                                  //END ****

                                  //APP SETTINGS CATEGORY
                                  //START ****
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Text('App Setting',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF838384)
                                        ),
                                      ),
                                      SettingsTile(
                                          title: 'Support',
                                          icon: Icons.headset_mic,
                                          iconSize: 27,
                                      ),
                                      SettingsTile(
                                          title: 'About App',
                                          icon: Icons.phone_iphone,
                                          iconSize: 27,
                                      ),
                                      SettingsTile(
                                        title: 'Logout',
                                        icon: FontAwesomeIcons.signOutAlt,
                                        fgColor: Color(0xFFff4f4f),
                                      ),
                                    ],
                                  ),
                                  //END ****
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                ),
              ],
            ),
          )
      ),
    );
  }
}
