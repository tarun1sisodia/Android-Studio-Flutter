import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class Textstyle1 extends StatelessWidget {
  //This is Created for Easy to use Custom Text with defined styles..
  final String text;
  final TextAlign align;
  const Textstyle1(
      {super.key, required this.text, this.align = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    //AppStyles is a  another file which contains styles.

    return Text(
      text,
      textAlign: align,
      //AppStyles is a file and ticketStyle is Design of for tickets
      style: AppStyles.ticketstyle,
    );
  }
}
