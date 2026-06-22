import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  // since we are using stateless widget, state defines should not change
  // final indicates that the state defines should not change.
  final Quote quote;

  final Function deleteQuote;

  // constructor to initialize the state
  QuoteCard({required this.quote, required this.deleteQuote});

  // widget builder
  @override
  Widget build(BuildContext context) {
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
          SizedBox(height: 10,),
          TextButton.icon(
            onPressed: () => {deleteQuote(quote)},
            icon: Icon(Icons.delete),
            label: Text("Delete Quote")
          )
        ],
        ),
      )
    );
  }
}