import 'package:flutter/material.dart';

Color primary = const Color(0xff4768b6);

class AppStyles {
  static Color primarycolor = primary;
  static Color textcolor = const Color(0xff3b3b3b);
  static Color textblue = const Color(0xff4396a9);

  //Text Style for normal
  static TextStyle textStyle = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: textcolor,
      fontFamily: 'Roboto');

  //Text Style for 2nd.
  static TextStyle textStyle1 = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 20,
      color: textcolor,
      fontFamily: 'Roboto');

  //Text Style for messages

  static TextStyle textStyle2 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: primarycolor,
    // fontFamily: 'Roboto'
  );
  static TextStyle textStyle3 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: Colors.white,
    // fontFamily: 'Times new roman'
  );
}
