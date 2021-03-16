import 'package:flutter/material.dart';

import './text_control.dart';
import './end.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var textIndex = 0;

  final texts = [
    "Hey, this is my first dynamic app",
    "Keep pressing, keep changing",
    "Don't know what else to write"
  ];

  void changeText() {
    setState(() {
        textIndex++;
    });  
  }

  void resetApp() {
    setState(() {
      textIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My own AppBar"),
        ),
        body: textIndex != texts.length
        ? TextControl(texts, textIndex, changeText)
        : End(resetApp),
      ),
    );
  }
}
