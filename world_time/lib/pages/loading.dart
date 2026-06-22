import 'package:flutter/material.dart';

import 'package:world_time/services/world_time.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setUpWorldTime() async {
    WorldTime wt = WorldTime(location: 'Kathmandu', flag: 'Nepal.png', url: 'Asia/Kathmandu');
    await Future.delayed(Duration(seconds: 1));
    await wt.getTime();

    // use pushReplacementNamed to replace the current route with the new route
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': wt.location,
      'flag': wt.flag,
      'time': wt.time,
      'isDayTime': wt.isDayTime,
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
      body: Center(
        child: SpinKitThreeInOut(
          color: Colors.redAccent,
          size: 50.0,
        ),
      )
    );
  }
}
