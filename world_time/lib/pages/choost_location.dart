import 'package:flutter/material.dart';

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
    print('Init state called');
  }

  // dispose() is called when the widget / state is removed from the widget tree.
  @override
  void dispose() {
    super.dispose();
    print('Dispose called');
  }


  // Called when building widget, or everytime when state changes
  @override
  Widget build(BuildContext context) {
    print("BUilding UI...");
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Choose Location', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        elevation: 0, // remove drop shdaow
        iconTheme: IconThemeData(color: Colors.white), // change icon color
      ),
      body: Text('Choose Location Screen'),
    );
  }
}