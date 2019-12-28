import 'package:flutter/material.dart';

class Pertanyaan extends StatelessWidget {
  final String txtPertanyaan;

  const Pertanyaan({Key key, this.txtPertanyaan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.0, bottom: 10.0),
      width: double.infinity,
      child: Text(
        txtPertanyaan,
        textAlign: TextAlign.center,
      ),
    );
  }
}
