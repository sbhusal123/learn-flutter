import 'package:http/http.dart';

import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; // location name for UI
  late String time; // time in location
  String flag; // flag image asset name
  String url; // location url (path) for api endpoint

  late bool isDayTime;

  // Constructor
  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async{

    try {
      // make http request
      Response response = await get(Uri.parse('https://time.now/developer/api/timezone/$url'));

      // decoding JSON string into Dart object ( Map or List )
      Map data = jsonDecode(response.body);

      // get properties from api
      String utcDatetime = data['utc_datetime'];
      String offset = data['utc_offset'];

      // Extract sign, hours, and minutes from offset (e.g. "+05:45" or "-05:00")
      String sign = offset.substring(0, 1);
      String hours = offset.substring(1, 3);
      String minutes = offset.substring(4, 6);

      // create a datetime object
      DateTime now = DateTime.parse(utcDatetime);
      if (sign == '+') {
        now = now.add(Duration(hours: int.parse(hours), minutes: int.parse(minutes)));
      } else {
        now = now.subtract(Duration(hours: int.parse(hours), minutes: int.parse(minutes)));
      }

      // set time property
      time = DateFormat.jm().format(now);

      // determine day or night
      isDayTime = now.hour >= 6 && now.hour <= 18 ? true : false;
    } catch(e) {
      // print error
      print('ERROR Getting time: $e');

      time = 'could not get time';
    }
  }
}