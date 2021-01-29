import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


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
                    )
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

class FoodCards extends StatelessWidget {
  const FoodCards({
    Key key,
   
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: HomeScreen.carouselImage.length, 
            itemBuilder: (context, index){
              return Container(
                //margin: EdgeInsets.symmetric(horizontal: 5.0),
                width: size.width,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0),),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(HomeScreen.carouselImage[index], ),
                  )
                ),
                //child: Image.asset(HomeScreen.carouselImage[index], ),
              );
            }, 
            options: CarouselOptions(
              height: 200.0,
              viewportFraction: 1,
              autoPlay: true,

            ),
          ),
          Container(
            width: size.width,
            color: Colors.transparent,
            //height: 100.0,
            child: Material(
              elevation: 3.0,
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:20.0, horizontal: 10.0,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(HomeScreen.logo, height: 50.0, width: 50.0, fit: BoxFit.cover,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text("Jollof and Co", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700,),),
                        Text("Delicious everyday Naija food", style: TextStyle(color: Color(0xffE5E5E5), fontWeight: FontWeight.normal, fontSize: 17.0),),
                        Text("Items as low as 500", style: TextStyle(color: Color(0xffE5E5E5), fontWeight: FontWeight.normal, fontSize: 14.0),),
                      ]
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Color(0xffFF0000),
                    )
                  ],
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}

/* 
Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: HomeScreen.carouselImage.map((e){
                          int index = HomeScreen.carouselImage.indexOf(e);
                          return Container(
                            width: 8.0,
                            height: 8.0,
                            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HomeScreen.currentImage == index ? Color.fromRGBO(0, 0, 0, 0.9) : Color.fromRGBO(0, 0, 0, 0.4),
                            )
                          );
                        }).toList(),
                      ),
                    ), */

class HorizontalImageList extends StatelessWidget {
  const HorizontalImageList({
    Key key,
    @required this.imageList,
  }) : super(key: key);

  final List<String> imageList;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(vertical: 10.0),
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
               width: 320.0,
               decoration: BoxDecoration(
                 
                 image: DecorationImage(
                   image: AssetImage(imageList[index]),
                   fit: BoxFit.fill,
                 )
               ),
             ),
           ),
         ),
       ),
    );
  }
}

