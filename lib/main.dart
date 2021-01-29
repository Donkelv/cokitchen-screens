import 'package:cokitchen/home/home.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/foundation.dart' show TargetPlatform;
//import 'package:google_fonts/google_fonts.dart';
import 'dart:io' show Platform;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Co Kitchen',
      theme: ThemeData(
        fontFamily: Platform.isIOS ? "helvetica": "NotoSans-Regular"
        
      ), 

      home: Home(),
    );
  }
}
