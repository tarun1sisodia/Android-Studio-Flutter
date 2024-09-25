import 'package:checkup2/base/widgets/app_lay_build.dart';
import 'package:checkup2/base/widgets/big_dot.dart';
import 'package:flutter/cupertino.dart';

import '../res/styles/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    //it will take the size of whole screen.
    final size = MediaQuery.of(context).size;

    print("Ticket View Size of height ${size.height.floor()}");
    print("Ticket View Size of Width ${size.width.floor()}");

    return SizedBox(
      width: size.width * 1,
      height: 179,
      child: Container(
        margin: const EdgeInsets.only(right: 25, left: 20),
        padding: const EdgeInsets.all(11),
        // color: Colors.yellow,
        decoration: BoxDecoration(
            color: AppStyles.textblue,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Agra",

                  //calling App_styles for text style
                  style: AppStyles.textStyle3,
                ),
                //Creating Space Between Text and Big Dots.
                Expanded(child: Container()),

                //Calling BigDots.
                const BigDot(),

                //It will expand size between text.
                const Expanded(
                    child: Stack(
                  children: [
                    //Maintain Space between both devices.

                    SizedBox(
                      height: 24,
                      //Calling App layout builder for Dots.
                      child: AppLayBuild(
                        randSize: 7,
                      ),
                    ),

                    Center(
                      child: Icon(CupertinoIcons.airplane),
                    )
                  ],
                )),

                const BigDot(),
                //Creating Space Between Text and Big Dots.
                Expanded(child: Container()),
                Text("Delhi", style: AppStyles.textStyle3),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
