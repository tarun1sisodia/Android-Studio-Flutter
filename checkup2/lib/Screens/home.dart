import 'package:checkup2/base/widgets/app_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:checkup2/base/res/styles/app_styles.dart';

import '../base/res/media.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  //Full Home Widget
  @override
  Widget build(BuildContext context) {
    //main Code Starts
    return Scaffold(
      //App Bar designing for home
      /*appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        //centerTitle: true,
        leading: const Icon(
          Icons.home,
          color: Colors.white,
        ),
        actions: const [
          Icon(
            Icons.security_outlined,
            color: Colors.red,
          ),
        ],
        backgroundColor: Colors.black,
      ),*/
      backgroundColor: const Color(0xFFEFD2D2),
      body: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),

              //Colors for 1st Container
              // color: Colors.amber,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hello Folks", style: AppStyles.textStyle),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Buy Products",
                            style: AppStyles.textStyle1,
                          )
                        ],
                      ),
                      Container(
                          //Design for Search Box
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 5),
                          height: 50,
                          width: 50,

                          //Applying Logo && Decoration for Image.
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              color: Colors.red,
                              image: const DecorationImage(
                                  image: AssetImage(
                                //Calling Another File for image.
                                Media.logo,
                              ))))
                    ],
                  ),

                  //Space b/w Search box && Book tickets.
                  const SizedBox(
                    height: 10,
                  ),

                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        //Color for searchbox
                        color: const Color(0xff687daf)),
                    child: Row(
                        //Search Box
                        children: [
                          //Search Icon
                          const Icon(
                            CupertinoIcons.search,
                            size: 25,
                            color: Colors.amber,
                          ),
                          // const SizedBox(width: 5),
                          const Text("Search",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          Container(
                            color: Colors.amber,
                          )
                        ]),
                  )
                ],
              )),
          const SizedBox(height: 40),
          AppDoubleText(
            bigtxt: 'Upcoming Flights',
            smalltxt: 'View all',
          ),
        ],
      ),
    );
  }
}
