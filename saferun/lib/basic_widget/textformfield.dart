import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textformfield extends StatefulWidget {
  const Textformfield({super.key});

  @override
  State<Textformfield> createState() => _TextformfieldState();
}

class _TextformfieldState extends State<Textformfield> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xCFC4C4FF),
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Color(0xf4f3f2d2),
        shadowColor: Colors.white,
        title: const Text(
          "Data Center",
        ),
        leading: const Icon(
          CupertinoIcons.person_alt_circle,
          color: Colors.purple,
        ),
      ),
      body: Container(
        child: TextField(
          controller: _controller,
        ),
      ),
    );
  }
}
