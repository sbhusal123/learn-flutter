import 'package:flutter/material.dart';

import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading...';

  void setUpWorldTime() async {
    WorldTime wt = WorldTime(location: 'Kathmandu', flag: 'Nepal.png', url: 'Asia/Kathmandu');
    await wt.getTime();

    setState(() {
      time = wt.time;
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
        padding: EdgeInsets.all(50),
        child: Text(time)
      )
    );
  }
}
