
import 'package:flutter/material.dart';
import 'package:instagram/constants/material_white.dart';
import 'package:instagram/home_page.dart';
import 'package:instagram/screens/auth_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(primarySwatch: white),
    );
  }

}

