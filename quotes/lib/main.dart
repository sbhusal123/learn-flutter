import 'package:flutter/material.dart';
import 'quote.dart';

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

  List<Quote> quotes = [
    Quote('Be yourself; everyone else is already taken.', 'Oscar Wilde'),
    Quote('I have not failed. I\'ve just found 10,000 ways that won\'t work.', 'Thomas Edison'),
    Quote('The only way to do great work is to love what you do.', 'Steve Jobs'),
  ];

  Widget quoteTemplate(Quote quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
        children: [
          Text(
            quote.text,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 18,
            )
          ),
          SizedBox(height: 6),
          Text(
            quote.author,
            style: TextStyle(
             fontSize: 14,
             color: Colors.grey[800], 
            )
          ),
        ],
        ),
      )
    );
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
            return quoteTemplate(quote);
        }).toList()
      )
    );
  }
}
