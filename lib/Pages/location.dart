import 'package:flutter/material.dart';
import 'package:flutter_app/Services/WorldTime.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  
  // String time = 'Loading....';

  void setUpWorldTime() async {
    WorldTime instance = WorldTime('Berlin', 'german.png', 'Europe/London');
    await instance.getTime();
    // setState(() {
    //   time = instance.time;
    // });

    // redirectToHomeScreen
    Navigator.pushReplacementNamed(context, '/welcome', arguments: {
      'location' : instance.location,
      'flag': instance.flag,
      'time': instance.time,
    });

  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text('New Page Loading'),
      )
    );
  }


}
