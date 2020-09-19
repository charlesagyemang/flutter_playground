import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/chooseLocation.dart';
import 'package:flutter_app/Pages/location.dart';
import 'package:flutter_app/pages/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation()
    }
  ));
}


