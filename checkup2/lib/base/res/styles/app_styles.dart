import 'package:flutter/material.dart';

Color primary = const Color(0xff4768b6);

class AppStyles {
  static Color primarycolor = primary;
  static Color textcolor = const Color(0xff3b3b3b);

  //Text Style for normal
  static TextStyle textStyle = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 17,
      color: textcolor,
      fontFamily: 'Roboto');
  //Text Style for 2nd.
  static TextStyle textStyle1 = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 22,
      color: textcolor,
      fontFamily: 'Roboto');
}
