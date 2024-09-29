import 'package:checkup2/Screens/all_tickets.dart';
import 'package:checkup2/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

import '../../Screens/all_hotels.dart';

class AppDoubleTextHotels extends StatelessWidget {
  const AppDoubleTextHotels({
    super.key,
    required this.bigtxt,
    required this.smalltxt,
  });
  //String for Text on display.
  final String bigtxt;
  final String smalltxt;

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
            onTap: () {
              //it will open a new screen from right to left.
              Navigator.push(
                context,
                MaterialPageRoute(
                  //AllTickets is a dart file.
                  builder: (BuildContext context) => const AllHotels(),
                ),
              );
            },
            //For function.
            child: Text(
              smalltxt,
              //copywith is used to copy all from one and alter/ Addcurrentone design.
              style: AppStyles.textStyle2.copyWith(color: Colors.blueAccent),
            ),
          ),
        ],
      ),
    );
  }
}
