import 'package:flutter/material.dart';

const String _fontFamily = 'Inter';
const double textSizeMultiplier = 1.1;

const TextStyle textStyleNormal = TextStyle(
    fontFamily: _fontFamily,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.3,
    wordSpacing: 0.3);

const TextStyle textStyleSemiBold = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.3,
    wordSpacing: 0.3);

const TextStyle textStyleBold =
    TextStyle(fontFamily: _fontFamily, fontWeight: FontWeight.w600);

class Texts {
  static const String homePageContent =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. \n\nLorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry.";
  static const String homePageHeading = "What is Liquid Galaxy";
  static const String appBarTitle = "Liquid Galaxy Demo";
  static const String appBarProfile = "My Profile";
  static const String appBarSettings = "Settings";
  static const String appBarConnection = "Disconnected";
  static const String buttonPrev = "Previous";
  static const String buttonNext = "Next";
}
