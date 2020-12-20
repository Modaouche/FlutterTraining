import 'package:flutter/material.dart';

class Restart extends StatelessWidget {
  final Function selectHdl;

  Restart(this.selectHdl);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(75),
        child: RaisedButton(
          color: Colors.blue[800],
          textColor: Colors.white,
          child: Text('restart'),
          onPressed: selectHdl,
        ));
  }
}
