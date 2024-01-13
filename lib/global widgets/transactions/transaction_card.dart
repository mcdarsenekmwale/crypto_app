import 'package:crypto_app/global models/crypto_currency.dart';
import 'package:crypto_app/global models/transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class TransactionCard extends StatelessWidget {
  final Transaction transaction;
  final double? padding;
  final double? size;
  final bool history;
  final VoidCallback? onTap;

  const TransactionCard({
    Key ?key,
    required this.transaction,
    this.size = 22.0,
    this.padding = 12.0,
    required this.history,
    this.onTap
  })
      :
        assert(padding != null),
        assert(size != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.deferToChild,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 50),
        curve: Curves.ease,
        padding:const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 12.0
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 5.0
        ),
        decoration: BoxDecoration(
            color: const Color(0xFFfdffff),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: const [
              BoxShadow(
                  spreadRadius: 1.0,
                  blurRadius: 1.0,
                  color: Color(0xFFd0dFdf),
                  offset: Offset(0.0, 2.0)
              )
            ]
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all( padding!),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: transaction.color
              ),
              child: SvgPicture.asset(
                "assets/icons/"+(transaction.icon!),
                height: size,
                color: const Color(0xFFFFFFFF),
              ),
            ),
            const SizedBox(
              width: 8.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(history?transaction.status! : transaction.type!,
                  style: const TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF030303)
                  ),
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Text(DateFormat.MMMd().add_jm().format(transaction.date!),
                  style: const TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF9f9fa0)
                  ),
                ),
              ],
            ),
            Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text((transaction.rise!?"+":"-")+"${transaction.value}"+" ${transaction.currency}",
                        style: TextStyle(
                            fontSize: 22.0,
                            fontFamily: 'Din',
                            fontWeight: FontWeight.w600,
                            color: transaction.color
                        ),
                      ),
                      Text("${CryptoCurrency().calculateDollar(transaction.value!)} USD",
                        style: const TextStyle(
                            fontSize: 12.0,
                            fontFamily: 'Din',
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF030303)
                        ),
                      ),
                    ]
                )
            )
          ],
        ),
      ),
    );
  }
}
