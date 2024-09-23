import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class menubook extends StatefulWidget {
  const menubook({super.key});

  @override
  State<menubook> createState() => _menubookState();
}

class _menubookState extends State<menubook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MenuBook"),
        leading: const Icon(CupertinoIcons.book),
      ),
      backgroundColor: const Color(0xFFEFD2D2),
      body: const Center(child: Text("Taru")),
    );
  }
}
