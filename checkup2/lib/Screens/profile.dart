import 'package:checkup2/base/login_&_Registration/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../base/res/styles/app_styles.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Profile"),
          leading: const Icon(CupertinoIcons.person)),
      backgroundColor: const Color(0xFFEFD2D2),
      body: Container(
        child: InkWell(
          //On Tapping the View All
          onTap: () {
            //it will open a new screen from right to left.
            Navigator.push(
              context,
              MaterialPageRoute(
                //AllTickets is a dart file.
                builder: (BuildContext context) => const Login(),
              ),
            );
          },
          //For function.
          child: Center(
            child: Text(
              "Login",
              style: AppStyles.textStyle1,
            ),
          ),
        ),
      ),
    );
  }
}
