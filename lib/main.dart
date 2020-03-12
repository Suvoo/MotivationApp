import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';


void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', text: 'It’s only after you’ve stepped outside your comfort zone that you begin to change, grow, and transform.'),
    Quote(author: 'Roy T. Bennett', text: 'Do what is right, not what is easy nor what is popular'),
    Quote(author: 'Steve Maraboli', text: 'Letting go means to come to the realization that some people are a part of your history, but not a part of your destiny')

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
            'Motivation',
        style: TextStyle(color: Colors.black)
      ),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote : quote,
          delete : (){
              setState(() {
                quotes.remove(quote);
              });
          }
        )).toList(),
      ),
    );
  }
}

