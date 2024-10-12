import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Day1 extends StatelessWidget {
  // final size = MediaQuery.of(context).size;
  const Day1({super.key});

  @override
  Widget build(BuildContext context) {
    //Container is a Widget which is common
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          elevation: 0,
          leading: const Icon(Icons.menu),
          title: const Text("Flutter by Google",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20))),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.purple,
            child: const Center(
                child: Text("I",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 50))),
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.lightBlue,
            child: const Center(
                child: Text("II",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 50))),
          ),
          Row(
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.deepPurpleAccent,
                child: const Center(
                    child: Text("III",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 50))),
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
                child: const Center(
                    child: Text("IV",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 50))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
