import 'package:flutter/material.dart';

class LogoShower extends StatelessWidget {
  const LogoShower({
    Key? key,
    required this.logo,
    required this.height,
    required this.width,
  }) : super(key: key);

  final String logo;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(logo), fit: BoxFit.fitWidth),
      ),
    );
  }
}
