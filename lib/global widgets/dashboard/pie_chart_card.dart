import 'package:fl_chart/fl_chart.dart';

import 'package:flutter/material.dart';

class PieChartCard extends StatelessWidget {
final int? touchedIndex;
final Function(FlTouchEvent, PieTouchResponse?)? touchCallBack;

  const PieChartCard({
    Key ?key,
    this.touchedIndex ,
    this.touchCallBack
  }) :  assert(touchCallBack != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1.8,
        child: PieChart(
          PieChartData(
              pieTouchData: PieTouchData(
                  touchCallback: touchCallBack!,
                  enabled: true
              ),
              borderData: FlBorderData(
                show: false,
              ),
              sectionsSpace: 0,
              centerSpaceRadius: 40,
              sections: showingSections()),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final double radius = isTouched ? 30 : 20;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color:  const Color(0xFF007dff),
            value: 37,
            title: '',
            radius: radius,
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff9b100),
            value: 37,
            title: '',
            radius: radius,
          );
        case 2:
          return PieChartSectionData(
            color:  const Color(0xFFfc5300),
            value: 28,
            title: '',
            radius: radius,

          );
        default:
          return PieChartSectionData();
      }
    });
  }
}
