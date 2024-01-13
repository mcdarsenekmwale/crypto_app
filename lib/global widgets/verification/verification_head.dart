
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VerificationHead extends StatelessWidget {
  const VerificationHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width =  MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 15.0,
          ),
          Container(
            padding: const EdgeInsets.all( 8.0),
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF9090ff),
            ),
            child: const FaIcon(
              FontAwesomeIcons.check,
              size: 20.0,
              color: Color(0xFF402ca3),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text('Verification needed',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                letterSpacing: 0.4,
                color: Color(0xFFFFFFFF)
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 55.0
            ),
            child: Row(
              children: const [
                Expanded(
                  child: Text('For increase your limits you need to pass verification',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 13.0,
                        fontFamily: 'Poppins',
                        letterSpacing: 0.4,
                        color: Color(0xFFd5d5f9)
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    border: Border.all(
                      color: const Color(0xFF9090ff),
                      width: 2.0
                    ),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xFF402ca3),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 1.0)
                      ),
                    ]
                ),
                child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF402ca3),
                      shadowColor: const Color(0xFF402ca3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0)
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 13.0,
                          horizontal: 35.0
                      ),
                    ),
                    child: const Text('PASS VERIFICATION',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                          color: Color(0xFF9090ff)
                      ),
                    )
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30.0,
          )
        ],
      ),
    );
  }
}
