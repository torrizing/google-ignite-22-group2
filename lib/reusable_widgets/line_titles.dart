import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          axisNameWidget: const Text(
            'Meseci',
            style: TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 30,
              getTitlesWidget: (value, meta) {
                const style = TextStyle(
                  color: Color(0xff68737d),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                );
                Widget text;
                switch (value.toInt()) {
                  case 2:
                    text = const Text('MAR', style: style);
                    break;
                  case 5:
                    text = const Text('JUN', style: style);
                    break;
                  case 8:
                    text = const Text('SEP', style: style);
                    break;
                  default:
                    text = const Text('', style: style);
                    break;
                }

                return SideTitleWidget(
                  axisSide: meta.axisSide,
                  space: 8.0,
                  child: text,
                );
              }),
        ),
        leftTitles: AxisTitles(
          axisNameWidget: const Text(
            'Vrednost',
            style: TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (double value, TitleMeta meta) {
              const style = TextStyle(
                color: Color(0xff67727d),
                fontWeight: FontWeight.bold,
                fontSize: 15,
              );
              String text;
              switch (value.toInt()) {
                case 1:
                  text = '10K';
                  break;
                case 3:
                  text = '30k';
                  break;
                case 5:
                  text = '50k';
                  break;
                default:
                  return Container();
              }

              return Text(text, style: style, textAlign: TextAlign.left);
            },
            reservedSize: 40,
            interval: 1,
          ),
        ),
      );
}