import 'package:flutter/material.dart';
import 'package:saferun/basic_widget/container_center_icons.dart';
import 'package:saferun/basic_widget/textformfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Day1(),
    );
  }
}
