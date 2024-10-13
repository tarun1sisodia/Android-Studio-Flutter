import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackCode extends StatefulWidget {
  const StackCode({super.key});

  @override
  State<StackCode> createState() => _StackCodeState();
}

class _StackCodeState extends State<StackCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(CupertinoIcons.square),
          title: Text("Stack"),
          backgroundColor: Colors.amber),
      body: Stack(
        alignment: Alignment.center,
        children: [
          //Big Box..
          Container(
            height: 300,
            width: 300,
            color: Colors.purple,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.purple.shade100,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.purple.shade900,
          )
        ],
      ),
    );
  }
}
