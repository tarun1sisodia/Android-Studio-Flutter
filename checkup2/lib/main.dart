import 'package:flutter/material.dart';
import 'package:checkup2/base/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}
//concept of required.
/*
  var run = app(x: 2, y: 5);
  print(run.x);

  var run1 = app(x: 2, y: 5);

  print(run1.y);

class app {
  int x;
  int y;

  app({required this.x, required this.y});

  //copy the whole class.
  app copyWith({int? x, int? y}) {
    //Returning the App.
    return app(x: x ?? this.x, y: y ?? this.y);
  }
}
*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: navbar(),
    );
  }
}
