import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridVieW extends StatefulWidget {
  const GridVieW({super.key});

  @override
  State<GridVieW> createState() => _LimitsOfContainerState();
}

class _LimitsOfContainerState extends State<GridVieW> {
  List numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  List names = ["Tarun", "Sanjay", "Prashant", "Yogita", "Kashish"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(CupertinoIcons.square),
          title: Text("Limits of Container."),
          backgroundColor: Colors.amber),
      body: GridView.builder(
          itemCount: 55,
          gridDelegate:
              //how many want in each row.
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
          itemBuilder: (context, index) => Container(
                color: Colors.deepPurple,
                margin: EdgeInsets.all(3),
              )),
    );
  }
}
