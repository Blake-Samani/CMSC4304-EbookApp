import 'package:flutter/material.dart';
import 'package:lesson1_Creative/screen/bcscreen.dart';
import 'package:lesson1_Creative/screen/bladescreen.dart';
import 'package:lesson1_Creative/screen/book_screen.dart';
import 'package:lesson1_Creative/screen/darkscreen.dart';

import 'package:lesson1_Creative/screen/start_screen.dart';
import 'package:lesson1_Creative/screen/home_screen.dart';

void main() {
  runApp(new L1CreativeApp());
}

class L1CreativeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //called by system when l1creative is rendered on the screen
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Roboto',
        primaryColor: Colors.black,
      ),
      // home: Text('Lesson 1 Creative'),
      initialRoute: StartScreen.routeName,
      routes: {
        StartScreen.routeName: (context) => StartScreen(),
        BookScreen.routeName: (context) => BookScreen(),
        BladeScreen.routeName: (context) => BladeScreen(),
        DarkScreen.routeName: (context) => DarkScreen(),
        BcScreen.routeName: (context) => BcScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
    );
  }
}
