
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppHeader extends StatelessWidget {
  final VoidCallback onTap;
  final String headText;
  final String subheadText;

  const AppHeader({
    Key ?key,
    required this.headText,
    required this.subheadText,
    required this.onTap
  })
      :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width =  MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      height: width*0.21,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap:onTap,
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
              Text(headText,
                style: const TextStyle(
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(subheadText,
              style: const TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'Poppins',
                  color: Color(0xFF9090ff)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
