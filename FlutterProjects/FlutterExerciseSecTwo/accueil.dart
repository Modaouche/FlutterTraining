import 'package:flutter/material.dart';

class Accueil extends StatelessWidget {
  final Function next;

  Accueil(this.next);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
        children: [
          Text('salut'),
          RaisedButton(
            onPressed: next,
            child: Text('next ?'),
            textColor: Colors.amber[900],
          )
        ],
      ),
    ));
  }
}
