import 'package:flutter/material.dart';
import 'package:fluttertodu/pages/home.dart';
import 'package:fluttertodu/pages/mainscreen.dart';
void main()  => runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.deepOrangeAccent,
  ),
  initialRoute: '/',
  routes: {
    '/': (context) => MainScreen(),
    '/todo':(context) =>Home(),
  },
));
