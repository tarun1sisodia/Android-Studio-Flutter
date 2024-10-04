import 'package:checkup2/base/res/styles/app_styles.dart';
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
    return Scaffold(
      backgroundColor: const Color(0xFFEFD2D2),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        children: [
          Text(
            "What are\n You looking for?",
            style: AppStyles.textStyle2
                .copyWith(color: Colors.purple, fontSize: 30),
          )
        ],
      ),
    );
  }
}
