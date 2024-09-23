import 'package:checkup2/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class AppDoubleText extends StatelessWidget {
  AppDoubleText({super.key, required this.bigtxt, required this.smalltxt});
  final String bigtxt;
  final String smalltxt;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigtxt,
          style: AppStyles.textStyle1,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            smalltxt,
            style: AppStyles.textStyle1,
          ),
        )
      ],
    );
  }
}
