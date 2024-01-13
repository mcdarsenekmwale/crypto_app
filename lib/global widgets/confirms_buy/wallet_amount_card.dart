
import 'package:flutter/material.dart';

class WalletAmountCard extends StatelessWidget {

  final Widget? topChild;
  final Widget? bottomChild;
  final double? height;

  const WalletAmountCard({
    Key ?key,
    this.height,
    required this.topChild,
    required this.bottomChild
  }) :  assert(bottomChild != null),
        assert(topChild != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width =  MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: const Color(0xFFffffff),
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: const [
            BoxShadow(
                spreadRadius: 1.0,
                blurRadius: 1.0,
                color: Color(0xFFd0dFdf),
                offset: Offset(1.0, 2.0)
            )
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 14.0,
          ),
          topChild!,
          const Padding(
            padding: EdgeInsets.symmetric(
                vertical:10.0
            ),
            child: Divider(
              height: 1.2,
              thickness: 1.2,
            ),
          ),
          bottomChild!

        ],
      ),
    );
  }
}
