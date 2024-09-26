import 'package:flutter/material.dart';

class AppLayBuild extends StatelessWidget {
  //Randome Size Generator.
  final int randSize;
  final double width;
  const AppLayBuild({super.key, required this.randSize, this.width = 4});

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
            (index) => SizedBox(
              child: Container(
                  width: width,
                  height: 2,
                  decoration: const BoxDecoration(color: Colors.white)),
            ),
          ));
    });
  }
}
