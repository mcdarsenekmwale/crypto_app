import 'package:flutter/material.dart';

class VerificationBody extends StatelessWidget {
  const VerificationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width =  MediaQuery.of(context).size.width;
    return Column(
      children: [
        Expanded(
          child: Container(
            width: width,
            margin: const EdgeInsets.symmetric(
              horizontal: 22.0,
              vertical: 16.0
            ),
            padding:const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                color: const Color(0xFFffffff),
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: const [
                  BoxShadow(
                      spreadRadius: 2.0,
                      blurRadius: 3.0,
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
                const Text("You have no transactions yet",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      letterSpacing: 0.3,
                      color: Color(0xFF010101)
                  ),
                ),
                const SizedBox(
                  height: 8.0,
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
              ],
            ),
          ),
        ),
        SizedBox(
          height: width*0.2,
        )
      ],
    );
  }
}
