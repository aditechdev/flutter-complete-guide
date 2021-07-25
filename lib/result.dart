import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  //? We can use VoidCallBack instead of Function

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are awesome and innocent!";
    } else if (resultScore <= 12) {
      resultText = "Preety Likable";
    } else if (resultScore <= 16) {
      resultText = "You are .. Strange";
    } else {
      resultText = "You are so bad";
    }

    return resultText;
  }

  // const Result({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text(
              "Restart The Quiz!",
            ),
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
