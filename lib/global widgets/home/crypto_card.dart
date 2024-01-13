
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CryptoCard extends StatelessWidget {

  final Color logoForeColor;
  final Color logoBackColor;
  final String logoIcon;
  final String title;
  final String subtitle;
  final Widget trailing;
  final double space;

  const CryptoCard({Key ?key,
    required this.logoForeColor,
     this.logoBackColor = const Color(0xFFFFFFFF),
    this.space = 15.0,
    required this.logoIcon,
    required this.title,
    required this.subtitle,
    required this.trailing,
  })
      :
        super(key: key);

  @override
  Widget build(BuildContext context) {

    final double width =  MediaQuery.of(context).size.width;

    return  Expanded(
      child: SizedBox(
        width: width,
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: logoForeColor
              ),
              child: SvgPicture.asset(
                "assets/icons/"+logoIcon,
                height: 25.0,
                color: logoBackColor,
              ),
            ),
            SizedBox(
              width: space,
            ),
            Expanded(
              flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(title,
                      style: TextStyle(
                          fontSize: 13.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade200
                      ),
                    ),
                    Text(subtitle,
                      style: const TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                      ),
                    ),
                  ],
                )
            ),
            Expanded(
              flex: 0,
                child: Container()),
            trailing
          ],
        ),
      ),
    );
  }
}
