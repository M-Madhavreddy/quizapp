import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  var queindex;
  final Function ansque;

  Quiz(
    @required this.question,
    @required this.queindex,
    @required this.ansque,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[queindex]['questiontext'] as String),
        ...(question[queindex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => ansque(answer['score']), answer['text'] as String);
        })
      ],
    );
  }
}
