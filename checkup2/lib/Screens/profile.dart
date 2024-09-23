import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        leading: const Icon(CupertinoIcons.person),
      ),
      backgroundColor: const Color(0xFFEFD2D2),
      body: const Center(child: Text("Kashu")),
    );
  }
}
