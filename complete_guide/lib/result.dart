import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  
  final int finalScore;
  Function resetHandeler;

  Result(this.finalScore, this.resetHandeler);


  String get resultPhrase {
    String resultText = 'lol this was sad';

    if (finalScore >= 5) {
      resultText = 'That was terrifying';
    }
    
    if (finalScore >= 7) {
      resultText = 'Not bad';
    }
    
    if (finalScore >= 10) {
      resultText = 'Cool';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
          child: Text('Reset Quiz'),
          onPressed: resetHandeler,
          textColor: Colors.blue,
        )
      ],
    );
  }
}
