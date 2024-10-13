import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerColumn extends StatelessWidget {
  const ContainerColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //by default Expanded is depends on Container's icon Size..
          Expanded(
            child: Container(
                color: Colors.purple, child: Icon(CupertinoIcons.home)),
          ),
          Container(
              height: 150,
              width: 300,
              color: Colors.orange,
              child: Icon(CupertinoIcons.profile_circled)),
          //This widget is depended on Icon Size..
          Expanded(
            child: Container(
                color: Colors.pinkAccent,
                child: Icon(CupertinoIcons.settings, size: 50)),
          ),
          //This Widget is Depends on Container Width..
          Expanded(
            child: Container(
                width: 50,
                color: Colors.green,
                child: Icon(CupertinoIcons.search_circle)),
          ),
        ],
      ),
    );
  }
}
