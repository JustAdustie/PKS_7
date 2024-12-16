import 'package:flutter/material.dart';

class AppStyles {
  static const TextStyle itemNameTextStyle = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.32,
    height: 20 / 16,
  );

  static const TextStyle priceTextStyle = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 17,
    height: 24 / 17,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle patientCountTextStyle = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 15,
    height: 20 / 15,
    fontWeight: FontWeight.w300,
  );

  static BoxDecoration boxDecoration = BoxDecoration(
    border: Border.all(
      color: Color(0xFFE0E0E0),
      width: 1.0,
      strokeAlign: BorderSide.strokeAlignInside,
    ),
    borderRadius: BorderRadius.all(Radius.circular(12)),
  );

  static const EdgeInsetsGeometry containerMarginBottom16 = EdgeInsets.only(bottom: 16);
  static const EdgeInsetsGeometry itemNameMargin = EdgeInsets.only(left: 16, top: 16);
  static const EdgeInsetsGeometry rowMargin = EdgeInsets.only(left: 13, top: 34, right: 6, bottom: 20);
  static const EdgeInsetsGeometry iconButtonPadding = EdgeInsets.zero;
}
