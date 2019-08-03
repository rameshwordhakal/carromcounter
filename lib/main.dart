import 'package:flutter/material.dart';
import './HomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CarromBoard Counter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.greenAccent,
        primaryColorDark: Colors.blueAccent,
      ),
      home: HomeScreen(),
    );
  }
}