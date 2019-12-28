import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  final Function btnClick;
  final String jawaban;

  const Jawaban({Key key, this.btnClick, this.jawaban}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(jawaban),
        color: Colors.red,
        onPressed: () {
          btnClick();
        },
      ),
    );
  }
}
