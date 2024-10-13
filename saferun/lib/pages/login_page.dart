import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saferun/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void home() {
    setState(() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade100,
        drawer: Drawer(
            backgroundColor: Colors.cyan.shade50,
            child: Column(
              children: [
                DrawerHeader(child: Icon(CupertinoIcons.lock_shield)),
                //List tile
                ListTile(
                  leading: Icon(CupertinoIcons.house),
                  title: Text("H O M E"),
                  onTap: () {
                    Navigator.pushNamed(context, '/homepage');
                  },
                ),
                /*ListTile(
                    leading: Icon(CupertinoIcons.search_circle),
                    title: Text("S E A R C H")),
                ListTile(
                  leading: Icon(CupertinoIcons.graph_square),
                  title: Text("A N A L Y Z E R"),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.archivebox),
                  title: Text("P A Y M E N T S"),
                ),*/
                ListTile(
                  leading: Icon(CupertinoIcons.settings_solid),
                  title: Text("S E T T I N G S"),
                  onTap: () {
                    Navigator.pushNamed(context, '/settings');
                  },
                )
              ],
            )),
        appBar: AppBar(title: Text("D R A W E R")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome Back!",
              style: TextStyle(fontSize: 25),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text("Username"),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text("Password"),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            ElevatedButton(onPressed: home, child: Text("S U B M I T"))
          ],
        ));
  }
}
