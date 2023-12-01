import 'package:flutter/material.dart';

abstract class Themes {
  Color get backgroundColor;
  Color get modeColor;
  Color get primaryColor;
  Color get secondaryColor;
  Color get primaryOppositeColor;
  Color get secondaryOppositeColor;
  Color get greenColor;
  Color get redColor;
}

class ThemesDark implements Themes {
  @override
  final Color backgroundColor = const Color(0xFF000911);
  @override
  final Color modeColor = const Color(0xFF000000);
  @override
  final Color primaryColor = const Color(0xFF233166);
  @override
  final Color primaryOppositeColor = Colors.white;
  @override
  final Color secondaryOppositeColor = const Color(0xFFB9AAD8);
  @override
  final Color secondaryColor = const Color(0xFF315FEC);
  @override
  final Color greenColor = const Color(0xFF252F52);
  @override
  final Color redColor = const Color(0xFF7D0000);
}

// class ThemesLight implements Themes {
//   @override
//   final Color primaryColor = const Color(0xFF585869);
//   @override
//   final Color oppositeColor = const Color(0xFFFFFFFF);
//   @override
//   final Color secondaryColor = const Color(0xFF3E4954);
//   @override
//   final Color greenColor = const Color(0xFF555D85);
// }
