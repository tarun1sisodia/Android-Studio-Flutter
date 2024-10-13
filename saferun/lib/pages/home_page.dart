import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.deepPurple.shade100,
        child: Column(
          children: [
            DrawerHeader(child: Icon(CupertinoIcons.house_fill)),
            /* ListTile(
                leading: Icon(CupertinoIcons.person_alt_circle_fill),
                title: Text("P R O F I L E"),
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                }),
            ListTile(
              leading: Icon(CupertinoIcons.folder_fill),
              title: Text("F I L E S"),
              onTap: () {
                Navigator.pushNamed(context, '/files');
              },
            ),
            ListTile(
              leading: Icon(CupertinoIcons.share_solid),
              title: Text("S H A R E"),
              onTap: () {
                Navigator.pushNamed(context, '/share');
              },
            ),
            ListTile(
              leading: Icon(CupertinoIcons.collections),
              title: Text("C O L"
                  " L E C T I O N S"),
              onTap: () {
                Navigator.pushNamed(context, '/collection');
              }
            ),
            ListTile(
              leading: Icon(CupertinoIcons.line_horizontal_3_decrease),
              title: Text("M O R E   O P T I O N S"),
              onTap: () {
                Navigator.pushNamed(context, 'more_options');
              }
            ),*/
            ListTile(
              leading: Icon(CupertinoIcons.person_2_square_stack_fill),
              title: Text("L O G I N "),
              onTap: () {
                Navigator.pushNamed(context, '/loginpage');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text("Coding Hero")),
    );
  }
}
