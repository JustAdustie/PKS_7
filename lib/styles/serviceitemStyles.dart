import 'package:flutter/material.dart';

class AppStyles {
  static const TextStyle serviceItemTextStyle = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.32,
    height: 20 / 16,
  );

  static const TextStyle serviceItemDaysTextStyle = TextStyle(
    color: Color(0xFF939396),
    fontFamily: "Montserrat",
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle serviceItemPriceTextStyle = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 17,
    height: 24 / 17,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    color: Color(0XFFFFFFFF),
    fontFamily: "Montserrat",
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w500,
  );

  static const EdgeInsets serviceItemPadding = EdgeInsets.all(14.0);
  static const EdgeInsets serviceItemMargin = EdgeInsets.only(
      left: 27.5, top: 0, right: 27.5, bottom: 16);
  static const EdgeInsets buttonPadding = EdgeInsets.symmetric(
      vertical: 10, horizontal: 12.5);
}
