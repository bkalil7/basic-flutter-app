import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final List<String> texts;
  final int textIndex;
  final Function changeText;

  TextControl(this.texts, this.textIndex, this.changeText);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}