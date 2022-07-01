import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  var score;
  final Function selectHAndler;
  Result(this.score, this.selectHAndler);
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Text("YOU DID IT"),
      ),
      Center(
        child: Text("your total score"),
      ),
      Text("$score"),
      Container(
        child: FlatButton(
          child: Text("Restart"),
          onPressed: selectHAndler,
        ),
      ),
    ]);
  }
}
