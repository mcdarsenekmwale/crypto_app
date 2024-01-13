import 'package:crypto_app/utils/theme_data.dart';

import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final double iconSize;
  final Color? fgColor;
  final Widget? trailing;
  final double? verticalPad;
  final VoidCallback? onTap;

  const SettingsTile({
    Key ?key,
    required this.title,
    required this.icon,
    this.iconSize = 25.0,
    this.onTap,
    this.fgColor ,
    this.trailing  ,
    this.verticalPad = 6.0
  })
      :
        assert(verticalPad != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
        children: [
          Divider(color: Colors.grey.withOpacity(0.4),thickness: 0.5,),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical:verticalPad!
            ),
            child: Row(
              children: [
                Icon(icon,
                size:iconSize,
                  color: AppThemeData.primaryColor,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                    child: Text(title,
                    style: TextStyle(
                      color: fgColor ??  Colors.grey.shade800,
                      fontSize: 16.0,
                      fontFamily: 'Din',
                      fontWeight: FontWeight.w700
                    ),
                    )
                ),
                trailing ??  Container()
              ],
            ),
          )
        ],
      ),
    );
  }
}
