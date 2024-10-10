import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../base/res/styles/app_styles.dart';

class AppTicketsIcons extends StatelessWidget {
  final IconData icon;
  final String txt;
  const AppTicketsIcons({super.key, required this.icon, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        children: [
          Row(
            children: [
              Icon(icon, color: Color(0xFF9496C3)),
              const SizedBox(width: 10),
              Text(txt, style: AppStyles.textStyle)
            ],
          ),
        ],
      ),
    );
  }
}
