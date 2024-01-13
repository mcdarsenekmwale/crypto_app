
import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  final Widget head;
  final Widget body;
  final double? height;

  const PageHeader({
    Key ?key,required this.head,
    required this.body,
    this.height = 20.0
  })
      :
        assert(height !=null),
        super(key: key);


  @override
  Widget build(BuildContext context) {
    final double width =  MediaQuery.of(context).size.width;
    return  Expanded(
        child: Container(
          height: double.infinity,
          width:width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xFF372588),
                    Color(0xFF402ca3),
                    Color(0xFF372588)
                  ]
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/top.png'),
                        fit: BoxFit.fill
                    )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 18.0,
                    ),
                    head,
                    SizedBox(
                      height:height,
                    ),
                  ],
                ),
              ),
             body
            ],
          ),
        )
    );
  }
}
