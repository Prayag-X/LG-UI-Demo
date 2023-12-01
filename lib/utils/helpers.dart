import 'package:flutter/material.dart';

Size screenSize(context) => MediaQuery.of(context).size;
double bottomInsets(context) => MediaQuery.of(context).viewInsets.bottom;
double statusBarSize(context) => MediaQuery.of(context).viewPadding.top;

nextScreen(context, String pageName) async =>
    await Navigator.pushNamed(context, '/$pageName');
nextScreenReplace(context, String pageName) async =>
    await Navigator.pushReplacementNamed(context, '/$pageName');
nextScreenOnly(context, String pageName) async => await Navigator.of(context)
    .pushNamedAndRemoveUntil('/$pageName', ModalRoute.withName('/'));
screenPop(context) => Navigator.of(context).pop();

Color darkenColor(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);
  final hsl = HSLColor.fromColor(color);
  final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
  return hslDark.toColor();
}

Color lightenColor(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);
  final hsl = HSLColor.fromColor(color);
  final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));
  return hslLight.toColor();
}

Color invertColor(Color color) {
  final r = 255 - color.red;
  final g = 255 - color.green;
  final b = 255 - color.blue;

  return lightenColor(
      Color.fromARGB((color.opacity * 255).round(), r, g, b), 0.4);
}
