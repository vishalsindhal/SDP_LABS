import 'package:flutter/material.dart';
import 'quote_card.dart';
import 'quote.dart'; // Absolute path

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: EchoList(),
      ),
    );

class EchoList extends StatefulWidget {
  @override
  State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {
/*
List<String> quotes = [
'The truth is realy pure and never simple',
'I see humans but no humanity',
'The time is always right to do what is right'
];
// List<String> author = [];
*/
/* this will create error..because list is now not of string....
List<String> quotes = [
Quote(text: 'The truth is realy pure and never simple',author:
'jignesh1'),
];
*/
  List<Quote> quotes = [
    Quote(text: 'The truth is really pure and never simple', author: 'vishal'),
    Quote(author: 'vishalsindhal', text: 'I see humans but no humanity'),
    Quote(
        text: 'The time is always right to do what is right', author: 'vishal'),
  ];
/*
Widget quoteTemplate(quote){
return QuoteCard(quote: quote,);
}
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent[100],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        children: quotes
            .map(
              (quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(
                    () {
                      quotes.remove(quote);
                    },
                  );
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
