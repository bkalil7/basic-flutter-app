import 'package:flutter/material.dart';

import './text.dart';

class TextControl extends StatelessWidget {
  final List<String> texts;
  final int textIndex;
  final Function changeText;

  TextControl(this.texts, this.textIndex, this.changeText);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          MyText(
            texts[textIndex],
          ),
          ElevatedButton(
            child: Text("Hey"),
            onPressed: changeText
          )
        ],
      );
  }
}