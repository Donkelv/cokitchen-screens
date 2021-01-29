import 'package:cokitchen/home/homeScreen.dart';
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

