import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTime() async {
    Response response = await get('http://worldtimeapi.org/api/timezone/Europe/London.json');
    Map data = jsonDecode(response.body);

    //get properties
    String dateTime = data['datetime'];
    String offSet   = data['utc_offset'].substring(1,3);

    // Create dateTime Object
    DateTime now = DateTime.parse(dateTime);
    now = now.add(Duration(hours: int.parse(offSet)));

    print('$now');
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen')
    );
  }


}
