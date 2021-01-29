import 'package:cokitchen/home/topHorizontallist.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


import 'foodCards.dart';
import 'topHomeSection.dart';
import 'trackOrderButton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);




  static TextEditingController _searchController;
  static String menuAsset = "assets/icon1.svg";
  static String logo = "assets/image4.png";
  static List <String> imageList = <String>[
    "assets/image 1.png",
    "assets/image 2.png"
  ];

  static List <String> carouselImage = <String>[
    "assets/image 3.png",
    "assets/image 3.png",
    "assets/image 3.png",
    "assets/image 3.png",
  ];
  static int currentImage = 0;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List <dynamic> cardList = [
    FoodCards(),
    FoodCards(),
    FoodCards(),
    
    
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 26.0,
                horizontal: 13.0,
              ),
              child: SingleChildScrollView(
               physics: BouncingScrollPhysics(),
                child: Column(
                  
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TopHomeSection(size: size, searchController: HomeScreen._searchController, menuAsset: HomeScreen.menuAsset),
                    HorizontalImageList(imageList: HomeScreen.imageList),
                    Text("Featured", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0,),),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: cardList.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, index){
                        return cardList[index];
                      }
                    ),
                    SizedBox(height: 80.0,)
                  ],
                ),
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





