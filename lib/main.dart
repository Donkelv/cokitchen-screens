import 'package:cokitchen/home/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/foundation.dart' show TargetPlatform;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var platform = Theme.of(context).platform;
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
