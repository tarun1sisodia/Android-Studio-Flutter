import 'package:checkup2/Screens/Widgets/hotel.dart';
import 'package:checkup2/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backcolor,
      appBar: AppBar(
        title: Text("Top Hotels", style: AppStyles.textStyle1),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          Column(
            children: [
              Hotel(),
              SizedBox(height: 20),
              Hotel(),
              SizedBox(height: 20),
              Hotel(),
              SizedBox(height: 20),
              Hotel(),
              SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }
}
