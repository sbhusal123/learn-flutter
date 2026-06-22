import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}


class QuoteList extends StatefulWidget {
  @override
  State<QuoteList> createState() => _QuoteList();
}

class _QuoteList extends State<QuoteList> {

  List<Quote> quotes = [
    Quote('Be yourself; everyone else is already taken.', 'Oscar Wilde'),
    Quote('I have not failed. I\'ve just found 10,000 ways that won\'t work.', 'Thomas Edison'),
    Quote('The only way to do great work is to love what you do.', 'Steve Jobs'),
  ];


  // callback function passed to the child widget
  void deleteQuote(Quote quote){
    setState((){
      quotes.where((q) => q != quote).toList();
    });
  }

  
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: quotes.map((quote) {
            return QuoteCard(
              quote: quote,
              deleteQuote: deleteQuote
            );
        }).toList()
      )
    );
  }
}