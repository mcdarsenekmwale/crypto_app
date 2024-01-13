
import 'package:flutter/material.dart';

class NoTransactionMessageCard extends StatelessWidget {
  const NoTransactionMessageCard({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final double width =  MediaQuery.of(context).size.width;
    return  Expanded(
      child: Container(
        width: width,
        margin: EdgeInsets.only(
          bottom: width * 0.2
        ),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 14.0,
            ),
            const Text("You haven't transactions yet",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  letterSpacing: 0.3,
                  color: Color(0xFF010101)
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 25.0
              ),
              child: Row(
                children: const [
                  Expanded(
                    child: Text("You'll see history of transactions when send or receive BTC",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.4,
                          color: Color(0xFF050505)
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            InkWell(
              onTap: (){},
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 10.0
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color:  const Color(0xFFffffff),
                    border: Border.all(
                        color: const Color(0xFFfd9300),
                        width: 3.0
                    )
                ),
                child: const Text('BUY BITCOIN',
                  style: TextStyle(
                    color: Color(0xFFfd9300),
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    letterSpacing: 0.2,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
