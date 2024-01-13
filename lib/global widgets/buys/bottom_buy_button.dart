
import 'package:flutter/material.dart';

class BottomBuyButton extends StatelessWidget {

  final String text;
  final Widget icon;
  final VoidCallback onClick;
  final double? verticalSize;

  const BottomBuyButton({
    Key ?key,
    required this.text,
    required this.icon,
    required this.onClick,
    this.verticalSize = 20.0
  }) :
        assert(verticalSize != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xFFd0dFdf),
                      spreadRadius: 6,
                      blurRadius: 6,
                      offset: Offset(1, 6)
                  ),
                ]
            ),
            child: ElevatedButton(
                onPressed: onClick,
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF402ca3),
                  shadowColor: const Color(0xFF402ca3),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0)
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: verticalSize!
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(text,
                      style: const TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                          color: Color(0xFFFFFFFF)
                      ),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    icon
                  ],
                )
            ),
          ),
        ),
      ],
    );
  }
}
