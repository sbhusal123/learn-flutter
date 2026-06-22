import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
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
      body: Text('Choose Location Screen')
    );
  }
}