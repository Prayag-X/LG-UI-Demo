import 'package:flutter/material.dart';

import '../constants/constants.dart';

extension CustomContainerDecoration on Widget {
  Container addBlendTheme(Color parentColor) {
    return Container(
      decoration: BoxDecoration(
        //Color of the container
        color: parentColor.withOpacity(0.7),

        //Roundness
        borderRadius: BorderRadius.circular(Constants.roundness),

        //Shadow of the same parent color
        boxShadow: [
          BoxShadow(
            color: parentColor,
            blurRadius: 33,
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),

      //The original widget on which it is called
      child: this,
    );
  }
}
