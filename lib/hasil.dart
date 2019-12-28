import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String text;
  final Function tryAgain;
  Result(this.text, this.tryAgain);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Center(
            child: Text(text),
          ),
        ),
        FlatButton(
          child: Text("Coba Lagi"),
          textColor: Colors.blue,
          onPressed: () {
            tryAgain();
          },
        )
      ],
    );
  }
}
