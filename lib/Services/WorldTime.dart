import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location, time, flag, url;

  WorldTime(this.location, this.flag, this.url);

  Future<void> getTime() async {

    try {
      Response response = await get('http://worldtimeapi.org/api/timezone/$url.json');
      Map data = jsonDecode(response.body);
      //get properties
      String dateTime = data['datetime'];
      String offSet   = data['utc_offset'].substring(1,3);
      // Create dateTime Object
      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(offSet)));
      time = now.toString();
    } catch (e) {
      print('Caught Error $e');
      time = 'Could Not Get Time Data';
    }


  }


}