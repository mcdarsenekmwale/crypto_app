import 'package:crypto_app/global widgets/exchange_button.dart';
import 'package:crypto_app/global widgets/page_header.dart';
import 'package:crypto_app/global widgets/side_bar_item.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideBar extends StatelessWidget {
  final Function()?  onHideSideBar;

  const SideBar({
    Key ?key,
    required this.onHideSideBar
  })
      : assert(onHideSideBar != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width =  MediaQuery.of(context).size.width;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      curve: Curves.ease,
      height: double.infinity,
      color: Colors.white,
      width: width*0.8,
      child: Column(
        children: [
          PageHeader(
              head: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 25.0
                ),
                child: GestureDetector(
                  onTap: ()=>Navigator.pushReplacementNamed(context, '/home'),
                  child: Row(
                    children: const [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/founder.jpg'),
                        maxRadius: 30.0,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text('Panji Harawa',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFFFFF)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0
                ),
                child: Column(
                  children: [
                    const ExchangeButton(),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      children: const [
                        Expanded(
                            child: Divider(
                              color: Color(0xFF9090ff),
                              thickness: 0.5,
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('WALLETS',
                            style: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.0,
                                color: Color(0xFF9090ff)
                            ),
                          ),
                        ),
                        Expanded(child: Divider(color: Color(0xFF9090ff),thickness: 0.5,))
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Column(
                      children: [
                        SideBarItem(
                          icon: "dashboard.svg",
                          title: "Dashboard",
                          isTouched: false,
                          onTap:(){
                            if(Get.currentRoute == '/') {
                              onHideSideBar!();
                            }else{
                              Get.offNamed( '/');
                            }

                          } ,
                        ),
                        SideBarItem(
                          icon: "exchange_1.svg",
                          title: "Buy | Sell",
                          isTouched: false,
                          onTap:(){
                            onHideSideBar!();
                            Navigator.pushNamed(context,'/buy-sell' );
                          },
                        ),
                        SideBarItem(
                          icon: "currency-exchange.svg",
                          title: "Exchange",
                          isTouched: false,
                          onTap:()=>Get.offNamed( '/exchange') ,
                        ),
                        SideBarItem(
                          icon: "list_1.svg",
                          title: "Transactions",
                          isTouched: false,
                          onTap:()=>Get.offNamed('/transactions') ,
                        ),
                        SideBarItem(
                          icon: "settings.svg",
                          title: "Settings",
                          isTouched: true,
                          onTap:(){
                            onHideSideBar!();
                            Get.offNamed( '/settings');
                          } ,
                        )
                      ],
                    )
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}
