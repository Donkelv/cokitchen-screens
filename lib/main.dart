import 'package:cokitchen/home/home.dart';
import 'package:flutter/material.dart';

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
      /* theme: ThemeData(
        textTheme: platform == TargetPlatform.iOS ? GoogleFonts.hell(

        )
      ) */

      home: Home(),
    );
  }
}
