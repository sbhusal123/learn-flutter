import 'package:flutter/material.dart';

import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  // initState() is called only once when the widget is created.
  @override
  void initState() {
    super.initState();
  }

    List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];

  // dispose() is called when the widget / state is removed from the widget tree.
  @override
  void dispose() {
    super.dispose();
  }


  // Called when building widget, or everytime when state changes
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Choose Location', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        elevation: 0, // remove drop shdaow
        iconTheme: IconThemeData(color: Colors.white), // change icon color
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
          padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
          child: Card(
              child: ListTile(
                onTap: () async {
                  await locations[index].getTime();
                  Navigator.pushReplacementNamed(context, '/home', arguments: {
                    'location': locations[index].location,
                    'flag': locations[index].flag,
                    'time': locations[index].time,
                    'isDayTime': locations[index].isDayTime,
                  });
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/${locations[index].flag}'),
                ),
                title: Text(locations[index].location),
              ),
            )
          );
        },
      ),
    );
  }
}