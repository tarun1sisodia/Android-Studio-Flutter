import 'package:flutter/material.dart';

import '../base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
