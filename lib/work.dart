// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import './HexColor.dart';

class HisApp extends StatelessWidget {
  const HisApp({Key? key}) : super(key: key);

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
  Widget getIcon(String color, IconData icon) {
    return IconButton(
        onPressed: () => {print("wow")},
        icon: Icon(
          icon,
          size: 30,
          color: HexColor(color),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: getIcon('277BC0', Icons.menu),
        title: Text(
          'facebook',
          style: TextStyle(
            color: HexColor("277BC0"),
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          getIcon('277BC0', Icons.message),
          getIcon('277BC0', Icons.search),
        ],
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 8.0,
      ),
    );
  }
}
