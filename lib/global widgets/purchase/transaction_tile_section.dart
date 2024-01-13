
import 'package:flutter/material.dart';

class TransactionTileSection  extends StatelessWidget {
  final String? title;
  final String? bottomValue;
  final Widget? subtitle;
  final double? height;
  final double? fontSize;

  const TransactionTileSection({
    Key ?key,
    required this.title,
    this.subtitle,
    this.fontSize = 23.0,
    this.bottomValue = "0.0",
    this.height = 1.0
  })
      : assert(bottomValue != null),
        assert(height != null),
        assert(title != null),
        assert(fontSize != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title!,
                  style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Din',
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade700
                  ),
                ),
                SizedBox(
                  height:height,
                ),

                Visibility(
                  visible: (subtitle == null),
                  child: Text("$bottomValue",
                    style: TextStyle(
                        fontSize: fontSize,
                        fontFamily: 'Din',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                        color: const Color(0xFF010101)
                    ),
                  ),
                  replacement: subtitle?? Container(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
