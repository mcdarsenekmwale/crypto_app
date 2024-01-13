import 'package:crypto_app/pages/account_pages/controllers/change_password_controller.dart';
import 'package:crypto_app/utils/theme_data.dart';
import 'package:crypto_app/global widgets/authentication/password_form_field.dart';
import 'package:crypto_app/global widgets/buys/bottom_buy_button.dart';
import 'package:crypto_app/global widgets/page_header.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ChangePasswordView extends  GetView<ChangePasswordController> {
   static final GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>();

  const ChangePasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width =  MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppThemeData.blueColor,
      body: SafeArea(
          child: Column(
            children: [
              PageHeader(
                  height: 1.0,
                  head: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    // height: width*0.23,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            IconButton(
                                icon: const FaIcon(
                                    Icons.arrow_back,
                                    size: 30.0,
                                    color: Color(0xFFFFFFFF)
                                ),
                                onPressed: ()=>Navigator.pop(context)
                            ),
                            Expanded(
                                child: Container()
                            ),
                            const Text("CHANGE PASSWORD",
                              style: TextStyle(
                                  fontSize: 14.5,
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
                      ],
                    ),
                  ),
                  body: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 25.0,
                                ),
                                PasswordFormField(
                                    title: "Old Password",
                                    initial: "Password",
                                    trailing: GestureDetector(
                                      onTap: (){},
                                      child: Icon(Icons.close,
                                        color: Colors.grey.shade900,
                                        size: 24.0,
                                      ),
                                    ),
                                    onValidate: (v){
                                      return null;
                                    },
                                    onChange: (v){}
                                ),
                                const SizedBox(
                                  height: 15.0,
                                ),
                                PasswordFormField(
                                    title: "Old Password",
                                    initial: "Password",
                                    onValidate: (v){
                                      return null;
                                    },
                                    onChange: (v){}
                                ),
                                const SizedBox(
                                  height: 12.0,
                                ),
                                PasswordFormField(
                                    title: "Old Password",
                                    initial: "Password",
                                    onValidate: (v){
                                      return null;
                                    },
                                    onChange: (v){}
                                ),
                                const SizedBox(
                                  height: 30.0,
                                ),
                                BottomBuyButton(
                                  text: 'CHANGE',
                                  verticalSize: 17.0,
                                  icon: Container(),
                                  onClick: (){},
                                ),
                                const SizedBox(
                                  height: 12.0,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
              ),
            ],
          )
      ),
    );
  }
}
