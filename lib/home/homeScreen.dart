import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'topHomeSection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);



  static TextEditingController _searchController;
  static String menuAsset = "assets/icon1.svg";
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
                ],
              ),
            ),
            //LIFO
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Container(
                  color: Colors.transparent,
                  width: size.width,
                  height: 60.0,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Material(
                      color: Color(0xff47AF30),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                      child: Center(
                        child: Text(
                          "Track Order",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

