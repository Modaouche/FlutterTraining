import 'package:flutter/material.dart';

class End extends StatelessWidget {
  final int result;
  final Function restart;

  End(this.result, this.restart);

  String get resultPhrase {
    String resultText;

    print('result :\n');
    print(result);
    if (result <= 15)
      resultText = "Quite far of my answers";
    else if (result <= 20)
      resultText = "Quite close of my answers";
    else if (result <= 29)
      resultText = "Awesome !";
    else if (result == 30) resultText = "??? Really ???";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: restart,
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
