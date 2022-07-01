import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // VoidCallback selectHandler;
  //try not to use void call back to void errors
  final Function selectHandler;

  String anstext;
  Answer(this.selectHandler, this.anstext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(anstext),
        onPressed: selectHandler,
      ),
    );
  }
}
