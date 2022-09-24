import 'package:flutter/material.dart';
import "quote.dart";
void main() => runApp(MaterialApp(
  home: QuoteList(),

));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: "Oscar Wilde" , text: "This is the majestic text"),
    Quote(author: "Trudy Wilthman" , text: "This is the majestic text"),
    Quote(author: "Henry Ford" , text: "This is the majestic text")
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,

      ),
      body: Column(
        children: quotes.map((quote) {
          return Text("${quote.text} - ${quote.author}");
        }).toList(),
      )
    );
  }
}



