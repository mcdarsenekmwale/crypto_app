
import 'package:flutter/material.dart';

class TransactionDetailTile extends StatelessWidget {

  final String title;
  final String subtitle;
  final double? titleFontSize;
  final double? subTitleFontSize;
  final Color? color;

  const TransactionDetailTile({
    Key ?key,
    required this.title,
    required this.subtitle,
    this.titleFontSize = 13.0,
    this.subTitleFontSize= 15.0,
    this.color
  })
      :
        assert(titleFontSize != null),
        assert(subTitleFontSize != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 5.0,
      ),
      child: Row(
        children: [
          Text(title + " : ",
            style: TextStyle(
                fontSize: titleFontSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade500
            ),
          ),
          Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(subtitle,
                    style: TextStyle(
                        fontSize: subTitleFontSize,
                        fontFamily: 'Din',
                        fontWeight: FontWeight.w700,
                        color: color?? Colors.grey.shade900
                    ),
                  ),
                ],
              )
          )
        ],
      ),
    );
  }
}
