import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CenterOfContainer extends StatelessWidget {
  const CenterOfContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(CupertinoIcons.square),
          title: Text("Design"),
          backgroundColor: Colors.amber),
      body: Center(
        child: GestureDetector(
          onTap: () {
            print("You Clicked it");
          },
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.blue),
            // color: Colors.blue,
            child: Center(child: Text("Tap")),
          ),
        ),
      ),
    );
  }
}
