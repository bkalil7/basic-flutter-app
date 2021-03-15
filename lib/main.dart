import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
                "My first text",
                style: TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                child: Text("Hey"),
                onPressed: null
              )
            ],
          ),
        ),
      ),
    );
  }
}
