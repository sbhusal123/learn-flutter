import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Home(),
  ),
);


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my first app"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        // child: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF98sbQeNeSMz3nbGKwwnh4XyFU-ojyeNghA&s'),)
        // child: Image(image: AssetImage('assets/space-2.jpg')),
        // child: Icon(Icons.airport_shuttle, color: Colors.amber, size: 50,)

        // child: IconButton(onPressed: () => print("Pressed"), icon: Icon(Icons.home))
        // child: ElevatedButton(onPressed: () => print("Pressed"), child: Text("Elevated Button"))
        // child: TextButton(onPressed: () => print("Pressed"), child: Text("Text Button"))

        // child: ElevatedButton(
        //   onPressed: () => print("Pressed"),
        //   child: Text("Click Me"),
        //   style: ElevatedButton.styleFrom(
        //     backgroundColor: Colors.red,
        //     foregroundColor: Colors.white,
        //   ),
        // )

        child: IconButton(
          icon: Icon(Icons.alternate_email),
          onPressed: () => print("Pressed"),
          color: Colors.amber,
        )

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("Pressed"),
        child: Text("click"),
        backgroundColor: Colors.red[500],
      ),
    );
  }
}
