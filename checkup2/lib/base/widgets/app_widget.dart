import 'package:checkup2/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {super.key,
      required this.bigtxt,
      required this.smalltxt,
      required this.func});
  //String for Text on display.
  final String bigtxt;
  final String smalltxt;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Container(
      //Padding For Text
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        //Space between text
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            bigtxt,
            style: AppStyles.textStyle1,
          ),
          //What is InkWell--> A Widget which calls Function onTap.
          InkWell(
            //On Tapping the View All
            onTap: func,
            //For function.
            child: Text(
              smalltxt,
              //copywith is used to copy all from one and alter/ Add
              // current one design.
              style: AppStyles.textStyle2.copyWith(color: Colors.blueAccent),
            ),
          ),
        ],
      ),
    );
  }
}
