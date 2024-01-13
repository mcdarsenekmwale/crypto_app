
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeTradeCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final List<Color> colors;
  final Color iconBoxColor;
  final String icon;
  final VoidCallback onTap;

  const HomeTradeCard({
    Key ?key,
    required this.title,
    required this.subtitle,
    required this.colors,
    required this.iconBoxColor,
    required this.icon,
    required this.onTap
  })
      :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width =  MediaQuery.of(context).size.width;
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.deferToChild,
        child: Container(
          height: 218.00,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                  colors: colors,
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight
              ),
            boxShadow: const [
              BoxShadow(
                spreadRadius: 2.0,
                blurRadius: 1.0,
                color: Color(0x0fffffff),
                offset: Offset(0.0, 2.0)
              )
            ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: width*0.3,
                width: width*0.3,
                decoration: BoxDecoration(
                    color: iconBoxColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(120),
                        bottomLeft: Radius.circular(80),
                        bottomRight:  Radius.circular(120)
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 30.0,
                      left: 20.0,
                      right: 25.0,
                      bottom: 15.0
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/"+icon,
                    color: const Color(0xFFffffff),
                    matchTextDirection: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                          style: const TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                          ),
                        ),
                        Text(subtitle,
                          style: const TextStyle(
                              fontSize: 12.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
