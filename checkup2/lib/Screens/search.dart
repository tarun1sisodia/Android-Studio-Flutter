import 'package:checkup2/Screens/Widgets/app_ticket_tabs.dart';
import 'package:checkup2/Screens/Widgets/app_tickets_icons.dart';
import 'package:checkup2/Screens/Widgets/find_tickets.dart';
import 'package:checkup2/Screens/Widgets/all_tickets.dart';
import 'package:checkup2/base/res/media.dart';
import 'package:checkup2/base/res/styles/app_styles.dart';
import 'package:checkup2/base/widgets/app_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFEFD2D2),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 22),
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "What are\nYou looking for?",
            style: AppStyles.textStyle2
                .copyWith(color: Colors.black, fontSize: 30),
          ),
          const SizedBox(
            height: 10,
          ),
          const AppTicketTabs(),
          const SizedBox(
            height: 25,
          ),
          const AppTicketsIcons(
            icon: CupertinoIcons.airplane,
            txt: "Departur"
                "e",
          ),
          const SizedBox(height: 15),
          const AppTicketsIcons(icon: CupertinoIcons.house_fill, txt: "Hotel"),
          const SizedBox(height: 20),
          const FindTickets(),
          const SizedBox(height: 15),
          //Message For Users calling App_widget.dart
          AppDoubleText(
            bigtxt: 'Upcoming Ticket',
            smalltxt: 'View all',
            func: () => Navigator.push(
              context,
              MaterialPageRoute(
                //AllTickets is a dart file.
                builder: (BuildContext context) => const AllTickets(),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  width: size.width * .45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 1,
                            spreadRadius: 2,
                            color: Colors.white),
                      ]),
                  child: Column(
                    children: [
                      Container(
                        height: 190,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(Media.hotel_stairs))),
                      ),
                      Text(
                        "Hotel Heaven\n30% off Buy your tickets of heaven",
                        style: AppStyles.textStyle1,
                      )
                    ],
                  )),
              // const SizedBox(width: 20),
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    width: size.width * .42,
                    height: 190,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage(Media.plane1), fit: BoxFit.cover),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 1,
                              spreadRadius: 2,
                              color: Colors.white),
                        ]),
                    child: Text(
                      "Worlds Fastest Flight\nis Waiting for you",
                      style:
                          AppStyles.hotelstyle.copyWith(color: Colors.blueGrey),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    width: size.width * .42,
                    height: 190,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage(Media.plane2), fit: BoxFit.cover),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 1,
                              spreadRadius: 2,
                              color: Colors.white),
                        ]),
                    child: Text(
                      "Worlds Affordable Flight\nis Waiting for you",
                      style:
                          AppStyles.hotelstyle.copyWith(color: Colors.blueGrey),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
