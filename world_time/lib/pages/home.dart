import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});
  

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)!.settings.arguments as Map;

    // set background image based on day or night
    String bgImage = data['isDayTime'] ? 'day.png' : 'night.png';

    Color? fontColor = data['isDayTime'] ? Colors.blue : Colors.indigo[700];

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/$bgImage'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
          padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/choose_location');
                },
                icon: Icon(Icons.edit_location, color: fontColor),
                label: Text('Edit Location', style: TextStyle(color: fontColor),),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['location'],
                    style: TextStyle(
                      fontSize: 28,
                      letterSpacing: 2,
                    )
                  )
                ],
              ),
              SizedBox(height: 20,),
              Text(
                data['time'],
                style: TextStyle(
                  fontSize: 66,
                  letterSpacing: 2,
                )
              )
            ],
        )
      )
      )
      )
    );
  }
}