import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'topHomeSection.dart';
import 'trackOrderButton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);




  static TextEditingController _searchController;
  static String menuAsset = "assets/icon1.svg";
  static List <String> imageList = <String>[
    "assets/image 1.png",
    "assets/image 2.png"
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 26.0,
                horizontal: 13.0,
              ),
              child: Column(
                children: [
                  TopHomeSection(size: size, searchController: _searchController, menuAsset: menuAsset),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10.0),
                     child: Container(
                       height: 200.0,
                       child: ListView.builder(
                         scrollDirection: Axis.horizontal,
                         shrinkWrap: true,
                         itemCount: imageList.length,
                         itemBuilder: (context, index) => Padding(
                           padding: const EdgeInsets.only(right: 10.0),
                           child: Container(
                             //height: 200.0,
                             //width: 350.0,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20.0),
                               image: DecorationImage(
                                 image: AssetImage(imageList[index]),
                                 fit: BoxFit.fill,
                               )
                             ),
                           ),
                         ),
                       ),
                     ),
                  ),
                ],
              ),
            ),
            //LIFO
            TrackOrderButton(size: size),
          ],
        ),
      ),
    );
  }
}

