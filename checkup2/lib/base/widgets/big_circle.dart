import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class BigCircle extends StatelessWidget {
  final bool checkpos;
  const BigCircle({super.key, required this.checkpos});

  @override
  Widget build(BuildContext context) {
    // Make code for Circle on ticket
    return Container(
      height: 20,
      width: 10,
      decoration: BoxDecoration(
        color: AppStyles.backcolor,
        //Checking True or false then make circles
        borderRadius: checkpos == true
            ? const BorderRadius.only(
                topRight: Radius.circular(10), bottomRight: Radius.circular(10))
            : const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
      ),
    );
  }
}
