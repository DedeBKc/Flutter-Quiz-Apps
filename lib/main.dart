import 'package:flutter/material.dart';
import 'package:latihan_widget/hasil.dart';
import 'package:latihan_widget/kuis.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int indexQuestions = 0;
  var questions = [
    {
      "teksPertanyaan": "Bahasa Pemrograman Web",
      "teksJawaban": [
        {"text": "PHP", "score": 1},
        {"text": "C++", "score": 0},
        {"text": "C#", "score": 0},
      ]
    },
    {
      "teksPertanyaan": "Siapa Presiden 2019",
      "teksJawaban": [
        {
          "text": "Probowo",
          "score": 0,
        },
        {
          "text": "Sandi Uno",
          "score": 0,
        },
        {
          "text": "Jokowi",
          "score": 1,
        },
      ]
    },
    {
      "teksPertanyaan": "Pemenang Ballon D'or 2019",
      "teksJawaban": [
        {
          "text": "Messi",
          "score": 1,
        },
        {
          "text": "Ronaldo",
          "score": 0,
        },
        {
          "text": "Mbappe",
          "score": 0,
        },
      ]
    },
  ];

  int total = 0;
  String result = '';
  _clickAnswer(int score) {
    setState(() {
      indexQuestions++;
      total += score;
      if (total <= 1) {
        result = "Nilai anda : C";
      }
      else if (total <= 2) {
        result = "Nilai anda : B";
      }
      else if (total <= 3) {
        result = "Nilai anda : A";
      }
    });
  }

  tryAgain() {
    setState(() {
      indexQuestions = 0;
      total = 0;
      print("indexQuestions + " + indexQuestions.toString());
      print("total : " + total.toString());
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Widgets"),
      ),
      body: indexQuestions < questions.length
          ? Kuis(questions, indexQuestions, _clickAnswer)
          : Result(result, tryAgain),
    );
  }
}
