import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static List<Widget> _screens = <Widget>[
    HomeScreen(),
    Container(
      height: 300.0,
      width: 300.0,
      color: Colors.green,
    ),
    Container(
      height: 300.0,
      width: 300.0,
      color: Colors.blue,
    ),
    Container(
      height: 300.0,
      width: 300.0,
      color: Colors.red,
    ),
    
  ];
  final String foodAsset = 'assets/food.svg';
  final String percentAsset = 'assets/%.svg';


  void _ontapItem(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              foodAsset,
              color: Color(0xff919191),
              height: 19.0,
              width: 19.0,
            ),
            activeIcon: SvgPicture.asset(
              foodAsset,
              color: Color(0xffFF0000),
              height: 19.0,
              width: 19.0,
              
            ),
            label: 'Food',
            backgroundColor: Colors.white,

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
            backgroundColor: Colors.white,

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Orders',
            backgroundColor: Colors.white,

          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              percentAsset,
              color: Color(0xff919191),
              height: 19.0,
              width: 19.0,
            ),
            activeIcon: SvgPicture.asset(
              percentAsset,
              color: Color(0xffFF0000),
              height: 19.0,
              width: 19.0,
              
            ),
            label: 'Deals',
            backgroundColor: Colors.white,

          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xffFF0000),
        unselectedItemColor: Color(0xff919191),
        iconSize: 19.0,
        onTap: _ontapItem,
        elevation: 2.0,
      ),
    );
  }
}

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