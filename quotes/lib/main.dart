import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}


class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteList();
}

class _QuoteList extends State<QuoteList> {

  List<String> quotes = [
    'Be yourself; everyone else is already taken.',
    'I have not failed. I\'ve just found 10,000 ways that won\'t work.',
    'The only way to do great work is to love what you do.',
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote) {
            return Text(quote);
        }).toList()
      )
    );
  }
}
