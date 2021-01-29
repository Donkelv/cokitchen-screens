import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Stack(
          children: [
            
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 26.0, horizontal: 13.0,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.baseline,
                    //textBaseline: TextBaseline.alphabetic,
                    
                    children: <Widget>[
                      Icon(Icons.schedule, color: Color(0xff95989A), size: 20.0,),
                      Text(" Deliver now, to",  style: TextStyle(color: Color(0xff95989A), fontSize: 14.0,),),
                    ]
                  ),
                  Row(
                    children:[

                    ]
                  ),
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
                  height: 50.0,
                  
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Material(
                      color: Color(0xff47AF30),
                      borderRadius: BorderRadius.all(Radius.circular(5.0),),
                      child: Center(
                        child: Text("Track Order", style: TextStyle(color: Colors.white),),
                      ),

                    ),
                  ),
                ),
              )            
            ),
          ],
        ),
      ),
    );
  }
}