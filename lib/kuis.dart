import 'package:flutter/material.dart';
import 'package:latihan_widget/pertanyaan.dart';

import 'jawaban.dart';

class Kuis extends StatelessWidget {
  final pertanyaan;
  final indexPertanyaan;
  final Function _klikJawaban;

  Kuis(this.pertanyaan, this.indexPertanyaan, this._klikJawaban);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Pertanyaan(
          txtPertanyaan: pertanyaan[indexPertanyaan]
          ['teksPertanyaan'],
        ),
        ...(pertanyaan[indexPertanyaan]['teksJawaban'] as List<Map<String, Object>>)
          .map((answer) {
          return Jawaban(
            btnClick: () => _klikJawaban(answer['score']),
            jawaban: answer['text'],
          );
        }).toList()
      ],
    );
  }
}
