
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CryptoChargeStatusCard extends StatelessWidget {
  final Widget? child;
  final String? title;
  final String? subtitle;
  final String? tradeType;
  final String? icon;
  final Color? fgColor;
  final Color? bgColor;
  final Animation<Offset>? animation;

  const CryptoChargeStatusCard({
    Key ?key,
    required this.child,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.fgColor,
    required this.animation,
     this.bgColor= const Color(0xFFFFFFFF),
     this.tradeType =  "BUY"
  })
      :
        assert(title != null),
        assert(subtitle != null),
        assert(child !=null),
        assert(icon !=null),
        assert(fgColor !=null),
        assert(bgColor != null),
        assert(tradeType != null),
        super(key: key);



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 98.0,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFfdfdff),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: const [
                        BoxShadow(
                            spreadRadius: 2.0,
                            blurRadius: 1.0,
                            color: Color(0xFFd0dFdf),
                            offset: Offset(0.0, 2.0)
                        )
                      ]
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: fgColor
                          ),
                          child: SlideTransition(
                            position: animation!,
                            child: SvgPicture.asset(
                              "assets/icons/"+icon!,
                              height: 23.0,
                              color: bgColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(title!,
                                  style: const TextStyle(
                                      fontSize: 12.0,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF030303)
                                  ),
                                ),
                                Text(subtitle!,
                                  style: const TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Din',
                                      fontWeight: FontWeight.w700,
                                      color:  Color(0xFF030303)
                                  ),
                                ),
                              ],
                            )
                        ),
                       child!
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Container(

                  width: 80.0,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 6.0,
                      vertical: 10.0
                  ),
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: const [
                        BoxShadow(
                            spreadRadius: 2.0,
                            blurRadius: 1.0,
                            color: Color(0xFFd0dFdf),
                            offset: Offset(0.0, 2.0)
                        )
                      ]
                  ),
                  child: Center(
                    child: Text(tradeType!,
                      style: const TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF030303)
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
