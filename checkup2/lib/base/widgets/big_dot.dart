import 'package:flutter/material.dart';

class BigDot extends StatelessWidget {
  const BigDot({super.key});

  @override
  Widget build(BuildContext context) {
    //Creating Dots for Ticket.
    return Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: Colors.cyan,
          border: Border.all(width: 3, color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ));
  }
}
