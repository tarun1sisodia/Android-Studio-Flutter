import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    //it will take the size of whole screen.
    final size = MediaQuery.of(context).size;

    print(size.height);
    print(size.width);

    return SizedBox(
      width: size.width * 1,
      height: 179,
      child: Container(
        margin: EdgeInsets.only(right: 25, left: 20),
        padding: EdgeInsets.all(13),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Agra",
                  style: AppStyles.textStyle3,
                ),

                //It will expand size between text.
                Expanded(child: Container()),
                Text("Delhi", style: AppStyles.textStyle3)
              ],
            ),
          ],
        ),
        // color: Colors.yellow,
        decoration: BoxDecoration(
            color: AppStyles.textblue,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
      ),
    );
  }
}
