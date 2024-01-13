
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CurrencyRightTrend extends StatelessWidget {
  final Color lineColor;
  final Color? color;
  final bool rise;
  final String value;
  final List<FlSpot> flSpotsData;

  const CurrencyRightTrend({
    Key ?key,
    this.color,
    required this.lineColor,
    required this.rise,
    required this.value,
    required this.flSpotsData

  })
      :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        margin: const EdgeInsets.only(bottom: 2.0),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.transparent
        ),
        child: Column(
          children: [
            Expanded(
              child: LineChart(
                sampleData1() ,
                duration: const Duration(milliseconds: 250),

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(value,
                  style: TextStyle(
                      fontSize: 11.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: color??Colors.grey.shade300,
                    letterSpacing: 1.0
                  ),
                ),
                Visibility(
                  visible: rise,
                  replacement: const Icon(
                    Icons.arrow_drop_down,
                    size: 22.0,
                    color: Color(0xFFc0382e),
                  ),
                    child: const Icon(
                      Icons.arrow_drop_up,
                      size: 22.0,
                      color: Color(0xFF00bf34),
                    ),
                )

              ],
            )
          ],
        ),
      ),
    );
  }

  LineChartData sampleData1() {
    return LineChartData(
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey.withOpacity(0.1),
        ),
        touchCallback: (FlTouchEvent tc ,LineTouchResponse? touchResponse) {},
        handleBuiltInTouches: true,
      ),
      gridData: const FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles:  const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        bottomTitles:AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
            reservedSize: 22,
            getTitlesWidget: (context, value) => const Text(
              '',
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
            )
          ),
            interval:10
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
          showTitles: false,
          getTitlesWidget: (context, value) => const Text(
              '',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              ),
            reservedSize: 30,
            interval: 8,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
        border:  Border(
          bottom: BorderSide(
            color: const Color(0xff4e4965).withOpacity(0.4),
            width: 1,
          ),
          left: BorderSide(
            color: const Color(0xff4e4965).withOpacity(0.4),
            width: 1,
          ),
          right: const BorderSide(
            color: Colors.transparent,
          ),
          top: const BorderSide(
            color: Colors.transparent,
          ),
        ),
      ),
      minX: 0,
      maxX: 14,
      maxY: 7,
      minY: 0,
      lineBarsData: linesBarData1(),
    );
  }

  List<LineChartBarData> linesBarData1() {
    final LineChartBarData lineChartBarData2 = LineChartBarData(
      spots: flSpotsData,
      isCurved: true,
      color: lineColor,
      barWidth: 3,
      isStrokeCapRound: true,
      dotData: const FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(
        show: false,
        color: const Color(0x00aa4cfc),
      ),
    );

    return [
      lineChartBarData2,
    ];
  }
}
