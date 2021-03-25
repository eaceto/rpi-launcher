import 'package:flutter/material.dart';

class CupertinoColours {
  static const MaterialColor black =
      MaterialColor(_blackPrimaryValue, <int, Color>{
    50: Color(0xFFE7E7E7),
    100: Color(0xFFC2C2C2),
    200: Color(0xFF999999),
    300: Color(0xFF707070),
    400: Color(0xFF525252),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF2E2E2E),
    700: Color(0xFF272727),
    800: Color(0xFF202020),
    900: Color(0xFF141414),
  });
  static const int _blackPrimaryValue = 0xFF333333;

  static const MaterialColor blackAccent =
      MaterialColor(_blackAccentValue, <int, Color>{
    100: Color(0xFFCFBECB),
    200: Color(_blackAccentValue),
    400: Color(0xFF76476A),
    700: Color(0xFF4C1D40),
  });
  static const int _blackAccentValue = 0xFFAF93A8;

  static TextTheme textTheme = Typography.whiteCupertino;
}
