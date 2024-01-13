import 'package:crypto_app/utils/theme_data.dart';
import 'package:crypto_app/global widgets/buys/bottom_buy_button.dart';
import 'package:crypto_app/global widgets/buys/payment_card.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PurchaseComponent extends StatefulWidget {

  const PurchaseComponent({Key ?key, }) : super(key: key);
  @override
  _PurchaseComponentState createState() => _PurchaseComponentState();
}

class _PurchaseComponentState extends State<PurchaseComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeData.accentColor,
        body: Padding(
            padding:  const EdgeInsets.symmetric(horizontal:20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                const PaymentCard(),
                const SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all( 20.0),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF9090ff)
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/info.svg",
                        height: 18.0,
                        color: const Color(0xFFFFFFFF),
                      ),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Expanded(
                        child: Text('You will need to pass verification to complete the purchase.'
                            ' It will take only a few minutes - all you need is your passport or Id and a few photos.',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontFamily: 'Poppins',
                              color: Colors.grey.shade700
                          ),
                        ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                BottomBuyButton(
                  text: 'CONTINUE',
                  icon: const Icon(
                      FontAwesomeIcons.longArrowAltRight,
                      color: Color(0xFFFFFFFF)
                  ),
                  onClick: ()=>Navigator.pushNamed(context, '/confirm-buy'),
                ),
                const SizedBox(
                  height: 10.0,
                ),
              ],
            )
        ),
    );
  }
}
