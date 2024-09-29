import 'package:checkup2/Screens/Widgets/hotel.dart';
import 'package:checkup2/base/widgets/app_widget.dart';
import 'package:checkup2/base/widgets/app_widget_hotels.dart';
import 'package:checkup2/base/widgets/ticket_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:checkup2/base/res/styles/app_styles.dart';

import '../base/res/media.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  //Full Home Widget
  @override
  Widget build(BuildContext context) {
    //main Code Starts
    return Scaffold(
      //App Bar designing for home
      /*appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        //centerTitle: true,
        leading: const Icon(
          Icons.home,
          color: Colors.white,
        ),
        actions: const [
          Icon(
            Icons.security_outlined,
            color: Colors.red,
          ),
        ],
        backgroundColor: Colors.black,
      ),*/
      // backgroundColor: const Color(0xFFEFD2D2),
      backgroundColor: AppStyles.backcolor,
      body: ListView(
        children: [
          //Distance B/w Top & Head.
          const SizedBox(
            height: 25,
          ),
          Container(
            //Padding For Whole.
            padding: const EdgeInsets.symmetric(horizontal: 10),

            //Colors for 1st Container
            // color: Colors.amber,
            child: Column(
              children: [
                Row(
                  //Space B/w hellofolks , book Tickets & logo
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello Folks", style: AppStyles.textStyle),
                        //Space After Search Bar & book Tickets
                        Container(
                          height: 5,
                        ),
                        Text(
                          "Book Tickets",
                          style: AppStyles.textStyle1,
                        )
                      ],
                    ),
                    Container(
                      //Design for Logo
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      height: 40,
                      width: 40,

                      //Applying Logo && Decoration for Image.
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFEFD2D2),
                        image: const DecorationImage(
                          image: AssetImage(
                            //Calling Another File for image.
                            Media.ticketlogo,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                //Space b/w Search box && Book tickets.
                Container(
                  height: 20,
                ),

                //Search Box Container
                Container(
                  margin: const EdgeInsets.only(right: 5, left: 5),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    //Color for searchbox
                    color: const Color(0xff687daf),
                  ),
                  child: const Row(
                    //Search Box
                    children: [
                      //Search Icon
                      Icon(
                        CupertinoIcons.search,
                        size: 25,
                        color: Colors.amber,
                      ),
                      // const SizedBox(width: 5),
                      Text("Search",
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                      //Line 116 Check can we remove it.
                      /*Container(
                            color: Colors.amber,
                          )*/
                    ],
                  ),
                ),
                Container(height: 30),

                //Message For Users calling App_widget.dart
                const AppDoubleText(
                  bigtxt: 'Upcoming Ticket',
                  smalltxt: 'View all',
                ),

                Container(
                  height: 10,
                ),

                //Ticket Views ticket_view.dart multiple tickets
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TicketView(),
                      TicketView(),
                      TicketView(),
                      TicketView(),
                    ],
                  ),
                ),
                const AppDoubleTextHotels(
                  bigtxt: "Hotels",
                  smalltxt: "View all",
                ),
                const Hotel(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
