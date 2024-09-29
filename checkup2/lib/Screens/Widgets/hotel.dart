import 'package:checkup2/base/res/styles/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../base/res/media.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.6,
      height: 350,
      // margin: const EdgeInsets.only(left: 30, right: 30),
      decoration: BoxDecoration(
        color: AppStyles.bluetype,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                color: AppStyles.amber,
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(image: AssetImage(Media.logo))),
          ),
        ],
      ),
    );
  }
}
