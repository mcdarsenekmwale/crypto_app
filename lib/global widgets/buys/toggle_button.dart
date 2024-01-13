import 'package:flutter/material.dart';

class ToggleButton extends StatelessWidget {
  final bool? isActive;
  final List<String>? options;
  final ValueChanged? onClick;

  const ToggleButton({
    Key ?key,
    required this.isActive,
    this.onClick, 
    this.options
  }) :  assert(isActive != null),
        assert(options != null),
        assert(onClick != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: 50.0,
      width: width,
      margin: const EdgeInsets.symmetric(
        horizontal: 5.0
      ),
      child: Stack(
        children: [
          GestureDetector(
            onTap:()=> onClick!(1),
            child: Container(
              width: width,
              height: 50,
              decoration: ShapeDecoration(
                  color: const Color(0xFF300e97),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  shadows: const [
                    BoxShadow(
                        color: Color(0xFF402ca3),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 1))
                  ]
              ),
              child: Row(
                children: List.generate(
                  options!.length,
                      (index) => Expanded(
                        child: Center(
                          child: Text(
                              options![index],
                              style: const TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                color: Color(0xFFfbfbfb)
                              ),
                          ),
                        ),
                      ),
                ),
              ),
            ),
          ),

          AnimatedAlign(
            alignment: isActive!
                ? Alignment.centerRight
                : Alignment.centerLeft,
            duration: const Duration(milliseconds: 200),
            curve: Curves.ease,
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: width*0.5,
              margin: const EdgeInsets.symmetric(
                horizontal: 5.0,
                vertical: 5.0
              ),
              decoration: ShapeDecoration(
                  color: const Color(0xFF4819cd),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                shadows: const [
                  BoxShadow(
                      color: Color(0xFF300e97),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0, 5))
                ]
              ),
              child: Text(
                isActive! ? options![1]
                    : options![0],
                style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                    color: Color(0xFFfbfbfb)
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
