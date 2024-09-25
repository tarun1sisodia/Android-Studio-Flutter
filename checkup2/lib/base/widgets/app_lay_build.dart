import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLayBuild extends StatelessWidget {
  //Randome Size Generator.
  final int randSize;
  const AppLayBuild({super.key, required this.randSize});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      //it will return space b/w both dots.
      print(
          "App layout Builder space b/w 2 dots ${constraints.constrainWidth() / randSize.floor()}");
      return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          //Direction for Flex.
          direction: Axis.horizontal,

          //Hard to understand
          children: List.generate(
              (constraints.constrainWidth() / randSize).floor(),
              (index) => const SizedBox(
                    width: 4,
                    height: 2,
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.white)),
                  )));
    });
  }
}
