import 'package:checkup2/base/widgets/app_column_text_layout.dart';
import 'package:checkup2/base/widgets/app_lay_build.dart';
import 'package:checkup2/base/widgets/big_circle.dart';
import 'package:checkup2/base/widgets/big_dot.dart';
import 'package:checkup2/base/widgets/textstyle.dart';
import 'package:checkup2/base/widgets/textstyle1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    //it will take the size of whole screen.
    final size = MediaQuery.of(context).size;

    print("Ticket View Size of height ${size.height.floor()}");
    print("Ticket View Size of Width ${size.width.floor()}");

    return Container(
      width: size.width * 0.90,
      height: 183,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        // margin: const EdgeInsets.only(right: 16),
        //WHole ticket background color.
        // color: Colors.pinkAccent,
        child: Column(
          children: [
            //Cyan Colored Part of ticket
            Container(
              margin: const EdgeInsets.only(right: 22, left: 22),
              padding: const EdgeInsets.all(12),
              // color: Colors.yellow,
              //Upper part of 1st Ticket
              decoration: BoxDecoration(
                  color: AppStyles.cyan,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Column(
                children: [
                  //Show Departure and destination with icons first line
                  Row(
                    children: [
                      //Calling file Textstyle for getting the style for
                      // passing text
                      const Textstyle(
                        text: "AC",
                        align: TextAlign.start,
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
                            //Dashes b/w dots
                            height: 24.0,
                            //Calling App layout builder for Dots.
                            child: AppLayBuild(
                              randSize: 7,
                            ),
                          ),
                          //icon of airplane
                          Center(
                            child: Icon(CupertinoIcons.airplane),
                          )
                        ],
                      )),

                      const BigDot(),
                      //Creating Space Between Text and Big Dots.
                      Expanded(child: Container()),
                      const Textstyle(
                        text: "DL",
                        align: TextAlign.end,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  //Show Departure and Destination with Date & Time
                  Row(
                    children: [
                      //Perfect Source Station Name
                      const SizedBox(
                        width: 100,
                        child: Textstyle1(
                          text: "Agra Cantt",
                          align: TextAlign.start,
                        ),
                      ),
                      //Creating Space Between Text and Big Dots.

                      Expanded(child: Container()),
                      //Travel Time
                      const SizedBox(
                        width: 105,
                        child: Textstyle1(
                          text: "4H 18H",
                        ),
                      ),

                      Expanded(child: Container()),
                      //Short name of destination.
                      const SizedBox(
                        width: 40,
                        child: Textstyle1(
                          text: "Delhi",
                          align: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Cicrle & Dots Ticket in middle
            Container(
              margin: const EdgeInsets.only(right: 22, left: 22),
              height: 20,
              //Half Lower color on ticket.
              color: AppStyles.orange,
              child: const Row(
                children: [
                  //making the Circles on ticket
                  BigCircle(checkpos: true),
                  Expanded(
                      child: AppLayBuild(
                    randSize: 10,
                    width: 5,
                  )),
                  BigCircle(
                    checkpos: false,
                  ),
                ],
              ),
            ),

            //Orange Part of Ticket
            Container(
              margin: const EdgeInsets.only(right: 22, left: 22),
              padding: const EdgeInsets.all(10),
              // color: Colors.yellow,
              decoration: BoxDecoration(
                color: AppStyles.orange,
                //Designing the Border upper part of Ticket.
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: const Column(
                children: [
                  //Show Departure and destination with icons first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                          topText: "2 Feb",
                          bottomText: "Date",
                          alignment: CrossAxisAlignment.start),
                      AppColumnTextLayout(
                          topText: "10:00 AM",
                          bottomText: "Departure Time",
                          alignment: CrossAxisAlignment.center),
                      AppColumnTextLayout(
                          topText: "3",
                          bottomText: "PL",
                          alignment: CrossAxisAlignment.end)

                      //Creating Space Between Text and Big Dots.
                      /*Expanded(child: Container()),
                      const SizedBox(
                        width: 120,
                        //Textstyle is a Widget file for custom design
                        child: Textstyle1(text: "07:00 AM"),
                      ),
                      //It will expand size between text.
                      //Creating Space Between Text and Big Dots.
                      Expanded(child: Container()),
                      const SizedBox(
                        //Textstyle is a Widget file for custom design
                        child: Textstyle(text: "24"),
                      ),*/
                    ],
                  ),
                  /*   SizedBox(
                    height: 1,
                  ),
*/
                  //Show Departure and Destination with Date & Time
                  /* Row(
                    children: [
                      //Textstyle is a Widget file for custom design

                      const Textstyle1(
                        text: "Date",
                        align: TextAlign.right,
                      ),
                      //Creating Space Between Text and Big Dots.
                      Expanded(child: Container()),
                      const Textstyle1(
                        text: "Departure Time",
                        align: TextAlign.center,
                      ),
                      Expanded(child: Container()),
                      //Sized Box For Platform Number
                      const SizedBox(
                        width: 23,
                        child: Textstyle1(
                          text: "PN",
                          align: TextAlign.end,
                        ),
                      ),
                    ],
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
