import 'package:flutter/material.dart';

class AppStyles {

  static const TextStyle headingTextStyle = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w500,
    fontSize: 24,
    height: 28 / 24,
    letterSpacing: 0.33,
  );


  static const TextStyle labelTextStyle = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w500,
    fontSize: 20,
    letterSpacing: 0.38,
    height: 28 / 20,
  );


  static const TextStyle buttonTextStyle = TextStyle(
    color: Color(0XFFFFFFFF),
    fontFamily: "Montserrat",
    fontSize: 17,
    height: 24 / 17,
    fontWeight: FontWeight.w500,
  );

  static const EdgeInsetsGeometry containerMargin = EdgeInsets.only(top: 92, left: 27);


  static const EdgeInsetsGeometry listViewPadding = EdgeInsets.only(top: 38, left: 27.5, right: 27.5);


  static const EdgeInsetsGeometry rowMargin = EdgeInsets.symmetric(vertical: 40, horizontal: 29);

  static final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFF1A6FEE),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    padding: const EdgeInsets.only(
      top: 16,
      right: 26,
      bottom: 16,
      left: 27,
    ),
  );
}
