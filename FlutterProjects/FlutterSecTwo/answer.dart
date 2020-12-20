import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHdl;
  final String answer;

  Answer(this.selectHdl, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 75),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answer),
        onPressed: selectHdl,
      ),
    );
  }
}
