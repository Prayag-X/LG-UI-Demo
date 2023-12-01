import 'package:flutter/material.dart';

extension SizedBoxPadding on num {
  //Returns the sizedbox with the mentioned height or width
  SizedBox get ph => SizedBox(height: toDouble());
  SizedBox get pw => SizedBox(width: toDouble());
}
