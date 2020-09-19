import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {

    Response response = await get('https://jsonplaceholder.typicode.com/todos/1');
    Map res = jsonDecode(response.body);
    print(res['title']);

  }

  @override
  void initState() {
    super.initState();
    getData();
    print('Initialized');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose A Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('Choose Location Screen'),
    );
  }
}
