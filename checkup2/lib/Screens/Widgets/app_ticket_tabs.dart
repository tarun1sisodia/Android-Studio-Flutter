import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  final String FirstTab;
  final String SecondTab;
  const AppTicketTabs(
      {super.key, required this.FirstTab, required this.SecondTab});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print("${size.width.floor()}");
    print("${size.height.floor()}");
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
      child: const Row(
        children: [
          AppTabs(
            Tabtxt: "All Tickets",
            Tabborder: false,
            Tabcolor: false,
          ),
          AppTabs(
            Tabtxt: "Hotels",
            Tabborder: true,
            Tabcolor: true,
          ),
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs(
      {super.key,
      this.Tabtxt = "",
      this.Tabborder = false,
      this.Tabcolor = false});
  final String Tabtxt;
  final bool Tabborder;
  final bool Tabcolor;

  @override
  Widget build(BuildContext context) {
    //getting the size of screen
    final size = MediaQuery.of(context).size;

    //Returning
    return Container(
      width: size.width * .46,
      padding: const EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
          color: Tabcolor == false ? Colors.white : Colors.blueGrey,
          borderRadius: Tabborder == false
              ? const BorderRadius.horizontal(left: Radius.circular(45))
              : const BorderRadius.horizontal(right: Radius.circular(45))),
      child: Center(child: Text(Tabtxt)),
    );
  }
}
