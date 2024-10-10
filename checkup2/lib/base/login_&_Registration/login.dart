import 'package:checkup2/base/res/styles/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppStyles.backcolor,
        appBar: AppBar(
            title: const Text("Ticket"),
            backgroundColor: AppStyles.amber,
            centerTitle: true),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login", style: AppStyles.textStyle1),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 40),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: const Icon(CupertinoIcons.profile_circled),
                    // hintText: "Username",
                    labelText: "Username",
                    floatingLabelStyle: AppStyles.textStyle1,
                    hintStyle: AppStyles.textStyle1,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 40),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: const Icon(CupertinoIcons.padlock_solid),
                    labelText: "Password",
                    floatingLabelStyle: AppStyles.textStyle1,
                    // hintText: "Password",
                    hintStyle: AppStyles.textStyle1,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {},
                    tooltip: "Reset Account",
                    icon: const Icon(
                        CupertinoIcons.arrow_2_circlepath_circle_fill)),
                IconButton(
                    onPressed: () {},
                    tooltip: "Debug",
                    icon: const Icon(CupertinoIcons.ant_circle)),
                IconButton(
                    onPressed: () {},
                    tooltip: "Connect to Server/ Login",
                    icon: const Icon(
                        CupertinoIcons.antenna_radiowaves_left_right)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
