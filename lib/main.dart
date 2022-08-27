// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import './work.dart';
import './HexColor.dart';
void main() {
  runApp(const HisApp());
  //runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FacebookApp(),
    );
  }
}

class FacebookApp extends StatelessWidget {
  const FacebookApp({Key? key}) : super(key: key);
  Widget getIcon(String color, double size, IconData icon) {
    return IconButton(
        onPressed: () => {print("wow")},
        icon: Icon(
          icon,
          size: size,
          color: HexColor(color),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Text(
        //   'Zaid Wow Wow',
        //   style: TextStyle(
        //     color: Colors.white,
        //     fontSize: 15.6,
        //   ),
        // ),
        leading: getIcon("1B74E4", 32, Icons.menu),
        title: Text(
          'facebook',
          style: TextStyle(
            color: HexColor("1B74E4"),
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          getIcon("1B74E4", 32, Icons.search),
          getIcon("1B74E4", 32, Icons.message),
        ],
        elevation: 10.0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
    );
  }
}
