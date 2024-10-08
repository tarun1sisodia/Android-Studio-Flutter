import 'package:checkup2/Screens/Widgets/app_ticket_tabs.dart';
import 'package:checkup2/Screens/Widgets/app_tickets_icons.dart';
import 'package:checkup2/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
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
          const AppTicketsIcons()
        ],
      ),
    );
  }
}
