import 'package:checkup2/base/res/styles/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../base/res/media.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key});

  @override
  Widget build(BuildContext context) {
    //Size of Screen Will automatically.
    final size = MediaQuery.of(context).size;
    //Container for Hotels
    return Container(
      padding: const EdgeInsets.all(10),
      width: size.width * 0.6,
      height: 320,
      // margin: const EdgeInsets.only(left: 30, right: 30),
      decoration: BoxDecoration(
        color: AppStyles.bluetype,
        borderRadius: BorderRadius.circular(26),
      ),
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              // color: AppStyles.amber,
              borderRadius: BorderRadius.circular(25),
              image: const DecorationImage(
                image: AssetImage(
                  Media.hotel1,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100),
                child: Text(
                  "Taj Hotel",
                  style: AppStyles.hotelstyle,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 90),
                child: Text(
                  "Agra",
                  style: AppStyles.hotelstyle1,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 90),
                child: Text(
                  "10,000/night",
                  style: AppStyles.hotelstyle,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
