import 'package:checkup2/base/res/styles/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
      decoration: BoxDecoration(
          color: AppStyles.orange, borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: () {},
        child: Center(
            child: Text(
          "Find Tickets",
          style: AppStyles.textStyle1.copyWith(fontWeight: FontWeight.w500),
        )),
      ),
    );
  }
}
