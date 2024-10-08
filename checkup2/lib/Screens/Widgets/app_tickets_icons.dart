import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../base/res/styles/app_styles.dart';

class AppTicketsIcons extends StatelessWidget {
  const AppTicketsIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(
        children: [
          const Icon(CupertinoIcons.airplane, color: Color(0xFF9496C3)),
          SizedBox(width: 10),
          Text("Departure", style: AppStyles.textStyle)
        ],
      ),
    );
  }
}
