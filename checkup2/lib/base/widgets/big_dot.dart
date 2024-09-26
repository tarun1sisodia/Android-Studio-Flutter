import 'package:flutter/material.dart';

class BigDot extends StatelessWidget {
  const BigDot({super.key});

  @override
  Widget build(BuildContext context) {
    //Creating Dots for Ticket.
    return Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: const Color(0xff0ca4a5),
          border: Border.all(width: 3, color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ));
  }
}
