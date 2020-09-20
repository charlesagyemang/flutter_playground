import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/chooseLocation.dart';
import 'package:flutter_app/Pages/location.dart';
import 'package:flutter_app/pages/home.dart';
import 'package:flutter_app/src/welcomePage.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
      '/welcome': (context) => WelcomePage(),
    }
  ));
}


