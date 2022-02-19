import 'package:flutter/material.dart';
import 'package:mayfay_hackaton/style.dart';
import 'package:pie_chart/pie_chart.dart';

class PieChartok extends StatelessWidget {
  const PieChartok({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = {
      "Pemasukkan": 6000000,
      "Pengeluaran": 1200000,
    };
    final colorList = <Color>[
      kPrimaryColor,
      kRedColor,
    ];
    return PieChart(
      legendOptions: const LegendOptions(
        showLegends: false,
        showLegendsInRow: false,
      ),
      dataMap: dataMap,
      animationDuration: const Duration(milliseconds: 800),
      chartRadius: 60,
      colorList: colorList,
      chartType: ChartType.ring,
      ringStrokeWidth: 60,
      chartValuesOptions: ChartValuesOptions(
        chartValueStyle: semiBoldTextStyle.copyWith(
          fontSize: 12,
          color: kWhite1Color,
        ),
        showChartValueBackground: false,
        showChartValues: true,
        showChartValuesInPercentage: true,
        showChartValuesOutside: false,
        decimalPlaces: 0,
      ),
    );
  }
}
