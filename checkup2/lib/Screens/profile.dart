import 'package:checkup2/Screens/Widgets/app_ticket_tabs.dart';
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
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
        children: [
          const SizedBox(height: 20),
          Text(
            "Tickets",
            style: AppStyles.textStyle1
                .copyWith(fontWeight: FontWeight.w500, fontSize: 25),
          ),
          const SizedBox(height: 10),
          const AppTicketTabs(
            FirstTab: "Upcoming",
            SecondTab: "Previous",
          ),
          const LoginPg(),
        ],
      ),
    );
  }
}

class LoginPg extends StatelessWidget {
  const LoginPg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
