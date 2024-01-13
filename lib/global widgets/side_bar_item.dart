import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideBarItem extends StatelessWidget {
  final VoidCallback ?onTap;
  final String icon;
  final String title;
  final bool isTouched;

  const SideBarItem({Key ?key,
    this.onTap,
    required this.icon,
    required this.title,
    required this.isTouched
  })
      :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      curve: Curves.ease,
      decoration: BoxDecoration(
        color: isTouched
            ? const Color(0xFF402ca3).withOpacity(0.02)
            :Colors.transparent,
        boxShadow:isTouched? [
          BoxShadow(
              spreadRadius: 2.0,
              blurRadius: 1.0,
              color: const Color(0x0fffffff).withOpacity(0.01),
              offset: const Offset(0.0, 2.0)
          )
        ]:[],
        borderRadius: BorderRadius.circular(10.0)
      ),
      padding: const EdgeInsets.all(2.0),
      margin: const EdgeInsets.symmetric(
        vertical: 10.0
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(2.0),
              child: SvgPicture.asset(
                "assets/icons/"+icon,
                color: const Color(0xFF9090ff),
                height: 22.0,
                matchTextDirection: true,
              ),
            ),
            const SizedBox(
              width: 15.0,
            ),
            Text(title,
              style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade300
              ),
            ),
          ],
        ),
      ),
    );
  }
}
