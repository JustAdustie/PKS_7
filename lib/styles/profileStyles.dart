// lib/styles/styles.dart

import 'package:flutter/material.dart';

class AppStyles {
  static const TextStyle headingTextStyle = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w500,
    fontSize: 24,
    height: 28 / 24.3,
    letterSpacing: 0.333,
  );

  static const TextStyle subHeadingTextStyle = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w500,
    fontSize: 15,
    height: 16 / 15,
    color: Color(0xFF898A8D),
    letterSpacing: 0.33,
  );

  static const EdgeInsetsGeometry containerMarginTop92Left27 = EdgeInsets.only(left: 27, top: 92);
  static const EdgeInsetsGeometry containerMarginTop22Left27 = EdgeInsets.only(left: 27, top: 22);
  static const EdgeInsetsGeometry containerMarginTop16Left27 = EdgeInsets.only(left: 27, top: 16);
  static const EdgeInsetsGeometry profileMenuPadding = EdgeInsets.only(left: 27, right: 28);
  static const EdgeInsetsGeometry profileMenuSpacing = EdgeInsets.only(top: 48);
}
