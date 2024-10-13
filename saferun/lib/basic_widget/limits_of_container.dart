import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LimitsOfContainer extends StatefulWidget {
  const LimitsOfContainer({super.key});

  @override
  State<LimitsOfContainer> createState() => _LimitsOfContainerState();
}

class _LimitsOfContainerState extends State<LimitsOfContainer> {
  List numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  List names = ["Tarun", "Sanjay", "Prashant", "Yogita", "Kashish"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(CupertinoIcons.square),
          title: Text("Limits of Container."),
          backgroundColor: Colors.amber),
      /*body:Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 300, color: Colors.brown),
          Container(height: 200, color: Colors.brown.shade100),
          //App Screen is not able to handle more height than its size
          // because of Column and containers.
          Container(height: 500, color: Colors.brown.shade300),
        ],
      ),*/
      //By Default ListView use vertical scroll feature.
      /*body: ListView(
        children: [
          //Now We can make more size of Container than its Screen Size Using
          // Listview.
          Container(height: 300, color: Colors.lightBlue),
          Container(height: 300, color: Colors.lightBlue.shade700),
          Container(height: 300, color: Colors.lightBlue.shade900)
        ],
      ),*/
      /*body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(width: 200, color: Colors.purple),
          Container(width: 200, color: Colors.purple.shade700),
          Container(width: 200, color: Colors.purple.shade100),
          Container(width: 200, color: Colors.purple.shade400),
          Container(width: 200, color: Colors.purple.shade900),
          Container(width: 200, color: Colors.purple.shade600),
        ],
      ),*/
      /*body: ListView.builder(
          //Item count is getting length of whole list. Just Like Array.
          itemCount: names.length,
          itemBuilder: (context, item) => ListTile(
                //Calling as Array index.
                title: Text(names[item]),
              )),*/
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
