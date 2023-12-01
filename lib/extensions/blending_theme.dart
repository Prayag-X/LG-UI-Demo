import 'package:flutter/material.dart';

import '../constants/constants.dart';

extension CustomContainerDecoration on Widget {
  Container addBlendTheme(Color parentColor) {
    return Container(
      decoration: BoxDecoration(
        color: parentColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(Constants.roundness),
        boxShadow: [
          BoxShadow(
            color: parentColor,
            blurRadius: 33,
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),
      child: this,
    );
  }
}
