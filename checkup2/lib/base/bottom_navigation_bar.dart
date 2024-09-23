import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../Screens/home.dart';
import '../Screens/profile.dart';
import '../Screens/setting.dart';
import '../Screens/menubook.dart';

class navbar extends StatefulWidget {
  const navbar({super.key});

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  //List of Available Screens
  final appScreens = [
    const home(),
    const menubook(),
    // const search(),
    const profile(),
    const setting()
  ];

  //for changing screens
  int screen = 0;
  void changescreen(int i) {
    setState(() {
      screen = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Whole Navigation Bar is Here
    return Scaffold(
      //Calling the AppScreen to change them on pressing by Icons of Navigation bar.
      body: appScreens[screen],

      //Nav_Bar icons
      bottomNavigationBar: BottomNavigationBar(

          //Configuration For Nav_bar
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: false,

          //Calling the Function to change screen
          onTap: changescreen,
          currentIndex: screen,

          //List of nav-bar icons
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.book), label: "Menubook"),
            /*BottomNavigationBarItem(
                icon: Icon(Icons.search_off_outlined), label: "Search"),*/
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person), label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings), label: "Settings"),
          ]),
    );
  }
}
