import 'package:carousel_slider/carousel_slider.dart';
import 'package:cokitchen/home/homeScreen.dart';
import 'package:flutter/material.dart';


class FoodCards extends StatelessWidget {
  const FoodCards({
    Key key,
   
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20.0,),
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