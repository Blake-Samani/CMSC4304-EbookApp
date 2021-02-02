import 'package:flutter/material.dart';
import 'package:lesson1_Creative/screen/bcscreen.dart';
import 'package:lesson1_Creative/screen/bladescreen.dart';
import 'package:lesson1_Creative/screen/darkscreen.dart';

class StartScreen extends StatelessWidget {
  static const routeName = '/startScreen';
  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ebook Collection',
          style: TextStyle(
            color: Colors.greenAccent[700],
            fontSize: 24.0,
            fontFamily: 'Roboto',
          ),
        ),
      ),
      // drawer: Drawer(),
      body: ListView(
        children: [
          Material(
            child: IconButton(
              icon: Image.asset('images/bladeitself.PNG'),
              iconSize: 300.0,
              onPressed: () => Navigator.pushNamed(context, BladeScreen.routeName),
              splashColor: Colors.grey,
            ),
          ),
          Material(
            child: IconButton(
              icon: Image.asset('images/darkness.PNG'),
              iconSize: 300.0,
              onPressed: () => Navigator.pushNamed(context, DarkScreen.routeName),
              splashColor: Colors.grey,
            ),
          ),
          Material(
            child: IconButton(
              icon: Image.asset('images/blackcompany.PNG'),
              iconSize: 300.0,
              onPressed: () => Navigator.pushNamed(context, BcScreen.routeName),
              splashColor: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
