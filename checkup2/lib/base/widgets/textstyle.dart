import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class Textstyle extends StatelessWidget {
  //Var declared to access
  final String text;
  final TextAlign align;
  //Named Parameters
  const Textstyle(
      {super.key, required this.text, this.align = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      //calling App_styles for text style
      style: AppStyles.ticketstyle2,
    );
  }
}
