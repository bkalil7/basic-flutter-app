import 'package:flutter/material.dart';

import './text.dart';

class End extends StatelessWidget {
  final Function resetApp;

  End(this.resetApp);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyText("The end!"),
        ElevatedButton(child: Text("Reset"), onPressed: resetApp),
      ]
    );
  }
}