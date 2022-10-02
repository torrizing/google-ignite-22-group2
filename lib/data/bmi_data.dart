import 'dart:math';
import 'package:collection/collection.dart';

class BmiData {
  final double x;
  final double y;

  BmiData({required this.x, required this.y});
}

List<BmiData> get bmiData {
  final Random random = Random();
  final randomNumbers = <double>[];
  for (var i = 0; i <= 11; i++) {
    randomNumbers.add(random.nextDouble());
  }

  return randomNumbers
      .mapIndexed((index, element) => BmiData(x: index.toDouble(), y: element))
      .toList();
}
