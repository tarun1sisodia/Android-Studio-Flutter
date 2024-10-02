import 'package:flutter/material.dart';

Color primary = const Color(0xff4768b6);

class AppStyles {
  static Color primarycolor = primary;
  static Color backcolor = const Color(0xfff1dedc);
  static Color textcolor = const Color(0xff3b3b3b);
  static Color orange = const Color(0xfff37032);
  static Color bluetype = const Color(0xFF4768B6);
  static Color cyan = const Color(0xff0ca4a5);
  static Color amber = Colors.amber;
  static Color purpleaccent = Colors.deepPurpleAccent;
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

  static TextStyle ticketstyle = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Colors.white,
  );
  static TextStyle ticketstyle2 = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 17,
    color: Colors.white,
    // fontFamily: 'Roboto'
  );
  static TextStyle hotelstyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 21,
    color: backcolor,
  );
  static TextStyle hotelstyle1 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: backcolor,
  );
}
