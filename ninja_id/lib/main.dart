import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: NinjaCard(),
    )
  );
}


class NinjaCard extends StatelessWidget {
  const NinjaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Ninja ID Card", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/chun-li.jpg'),
                radius: 50,
              ),
            ),
            Divider(height: 60, color: Colors.grey[800]),


            Text(
              'NAME',
              style: TextStyle(color: Colors.grey, letterSpacing: 2)
            ),
            SizedBox(height: 5),
            Text(
              'Surya Bhusal',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )
            ),            
            SizedBox(height: 20),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(color: Colors.grey, letterSpacing: 2)
            ),
            Text(
              '8',
              style: TextStyle(color: Colors.amberAccent, fontSize: 28, fontWeight: FontWeight.bold)
            ),
            SizedBox(height: 20),
            Text('EMAIL', style: TextStyle(color: Colors.grey, letterSpacing: 2)),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.email, color: Colors.white ),
                SizedBox(width: 10),
                Text('amber@gmail.com', style: TextStyle(color: Colors.white))
              ],
            )
          ],
        ),
      )
    );
  }
}