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
    Quote(text: 'Do. Or do not. There is no try.', movie: 'Star Wars' ),
    Quote(text: 'Your focus determines your reality.', movie: 'Star Wars'),
    Quote(text: 'I find your lack of faith disturbing.', movie: 'Star Wars')
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Awesome Movie Quotes'),
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList()
      ),
    );
  }
}



