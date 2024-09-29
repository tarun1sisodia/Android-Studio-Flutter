import 'package:checkup2/base/res/styles/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hotels", style: AppStyles.ticketstyle2),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            children: [],
          )
        ],
      ),
    );
  }
}
