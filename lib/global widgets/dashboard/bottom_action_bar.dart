import 'package:crypto_app/utils/theme_data.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomActionBar extends StatelessWidget {
  final Function()? onSend;
  final Function()? onRequest;
  final VoidCallback? onScan;

  const BottomActionBar({Key ?key,
    required this.onSend,
    required this.onRequest,
    required this.onScan
  }) :  assert(onRequest != null),
        assert(onScan != null),
        assert(onSend != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width =  MediaQuery.of(context).size.width;
    return Container(
      width: width,
      color: AppThemeData.accentColor,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 1.0),
        decoration: BoxDecoration(
            color: const Color(0xFF402ca3),
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: const [
              BoxShadow(
                  color: Color(0xFFd8d7da),
                  spreadRadius: 2,
                  blurRadius: 6,
                  offset: Offset(1, 2)
              ),
            ]
        ),
        child: Row(
          children: [
            Expanded(
                child: TextButton(
                  onPressed: onSend,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/upload.svg",
                        color: const Color(0xFFc0382e),
                        height: 21.0,
                        matchTextDirection: true,
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      const Text('SEND',
                        style: TextStyle(
                            fontSize: 17.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFFFFF)
                        ),
                      ),
                    ],
                  ),
                )
            ),
            GestureDetector(
              onTap: onScan,
              child: Container(
                padding: const EdgeInsets.all(13.0),
                margin:const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFF7958ef).withOpacity(0.5)
                ),
                child: SvgPicture.asset(
                  "assets/icons/qr-code_1.svg",
                  color: const Color(0xFFFFFFFF),
                  height: 32.0,
                ),
              ),
            ),
            Expanded(
                child: TextButton(
                  onPressed: onRequest,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/down.svg",
                        color: const Color(0xFF00bf34),
                        height: 20.0,
                        matchTextDirection: true,
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      const Text('REQUEST',
                        style: TextStyle(
                            fontSize: 17.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFFFFF)
                        ),
                      ),
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
