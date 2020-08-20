import 'package:flutter/material.dart';
//the main function is the starting point for all our Flutter Apps.
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Center(
                child:
                Text('I am a Poor College Student')),
            backgroundColor: Colors.grey[800]
        ),
        backgroundColor: Colors.blueGrey,
        body: Image(
          image: AssetImage('images/book.png'),
        ),
      ),
    ),
  );
}