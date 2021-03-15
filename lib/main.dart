import 'package:flutter/material.dart';

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
      if(textIndex + 1 < texts.length){
        textIndex++;
      }
      else if (textIndex + 1 == texts.length) {
        textIndex = 0;
      }
    });  
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My own AppBar"),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              Text(
                texts[textIndex],
                style: TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                child: Text("Hey"),
                onPressed: changeText
              )
            ],
          ),
        ),
      ),
    );
  }
}
