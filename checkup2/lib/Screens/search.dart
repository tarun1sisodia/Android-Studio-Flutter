import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
        leading: const Icon(CupertinoIcons.search),
      ),
      backgroundColor: const Color(0xFFEFD2D2),
      body: const Center(child: Text("what")),
    );
  }
}
