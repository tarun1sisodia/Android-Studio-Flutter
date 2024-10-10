import 'package:checkup2/base/res/styles/app_styles.dart';
import 'package:checkup2/base/widgets/ticket_view.dart';
import 'package:flutter/material.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backcolor,
      appBar: AppBar(
        title: const Text(
          "All Tickets",
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          Column(
            children: [
              TicketView(),
              TicketView(),
              TicketView(),
              TicketView(),
              TicketView(),
              TicketView(),
              TicketView(),
              TicketView(),
            ],
          )
        ],
      ),
    );
  }
}
