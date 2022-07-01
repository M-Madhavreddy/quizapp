import 'package:flutter/material.dart';

//import './question.dart';
//import './answer.dart';ew31
import './Quiz.dart';
import './Result.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyappState();
  }
}

class _MyappState extends State<Myapp> {
  var quesindex = 0;
  var totalscore = 0;
  // instead of using var questions use const questions bcz we dont change questions they are fixed
  final questions = [
    {
      'questiontext': 'what is your fav color',
      'answer': [
        {'text': 'blue', 'score': 2},
        {'text': 'black', 'score': 5},
        {'text': 'white', 'score': 1},
        {'text': 'green', 'score': 3},
      ],
    },
    {
      'questiontext': 'what is your fav fruit',
      'answer': [
        {'text': 'blueberry', 'score': 2},
        {'text': 'blackberry', 'score': 5},
        {'text': ' whiteberry', 'score': 1},
        {'text': 'roseberry', 'score': 4},
      ],
    },
    {
      'questiontext': 'what is your fav letter',
      'answer': [
        {'text': 'a', 'score': 6},
        {'text': 'a', 'score': 6},
        {'text': 'a', 'score': 6},
        {'text': 'a', 'score': 6}
      ],
    },
  ];
  void ansques(int score) {
    totalscore += score;
    setState(() {
      quesindex += 1;
    });
    print(quesindex);
  }

  void reset() {
    quesindex = 0;
    setState(() {
      quesindex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('myapp'),
          ),
          body: quesindex < questions.length
              ? Quiz(
                  questions,
                  quesindex,
                  ansques,
                )
              : Result(totalscore, reset)),
    );
  }
}
