
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransactionHeader extends StatelessWidget {
  final bool riseInTransactions;
  final bool showTrend;
  final Color? cryptoColor;
  final Color? currencyColor;

  const TransactionHeader({
    Key ?key,
    required this.riseInTransactions,
    required this.showTrend,
    this.cryptoColor  = const Color(0xFFFFFFFF),
    this.currencyColor  = const Color(0xFF9090ff)
  })
      :
        assert(cryptoColor != null),
        assert(currencyColor != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(text: TextSpan(
                children: [
                  TextSpan(
                      text: "2.00102000",
                      style: TextStyle(
                        color: cryptoColor,
                        fontSize: 30.0,
                        fontFamily: 'Din',
                        letterSpacing: 0.2,
                        fontWeight: FontWeight.w500,
                      )
                  ),
                  TextSpan(
                      text: " BTC",
                      style: TextStyle(
                        color: currencyColor,
                        fontSize: 30.0,
                        fontFamily: 'Din',
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w500,
                      )
                  ),
                ]
            )),
            RichText(text: const TextSpan(
                children: [
                  TextSpan(
                      text: "18,659.55",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontFamily: 'Din',
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.w600,
                      )
                  ),
                  TextSpan(
                      text: " USD",
                      style: TextStyle(
                        color: Color(0xFF9090ff),
                        fontSize: 18.0,
                        fontFamily: 'Din',
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.w600,
                      )
                  ),
                ]
            )),
          ],
        ),
        Expanded(
            child: Container()
        ),
        Visibility(
          visible: showTrend,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("+ 3.678%",
                style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Din',
                    fontWeight: FontWeight.w500,
                    color: riseInTransactions?const Color(0xFF00bf34):const Color(0xFFc0382e),
                    letterSpacing: 1.0
                ),
              ),
              const SizedBox(
                width: 6.0,
              ),
              Visibility(
                visible: riseInTransactions,
                child: const Icon(
                  FontAwesomeIcons.longArrowAltUp,
                  size: 22.0,
                  color: Color(0xFF00bf34),
                ),
                replacement: const Icon(
                  FontAwesomeIcons.longArrowAltDown,
                  size: 22.0,
                  color: Color(0xFFc0382e),
                ),
              )

            ],
          ),
        ),
      ],
    );
  }
}
