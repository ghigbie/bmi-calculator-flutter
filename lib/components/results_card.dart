import 'package:flutter/material.dart';
import 'card_main.dart';
import 'package:bmi_calculator/constants/constants.dart';

class ResultsCard extends StatelessWidget {

  ResultsCard({@required this.bmiResult, 
               @required this.resultText, 
               @required this.interpretation});

  String bmiResult;
  String resultText;
  String interpretation;

  @override
  Widget build(BuildContext context) {
    return CardMain(
      colour: kActiveCardColor,
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            resultText.toUpperCase(),
            style: kResultsTextStyle
          ),
          Text(
            bmiResult,
            style: kBMITextStyle
          ),
          Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                interpretation,
                style: kInterpretationTextStyle,
                textAlign: TextAlign.start,
            ),
          )
        ]
      ),
    );
  }
}

