import 'package:flutter/material.dart';
import 'card_main.dart';
import 'package:bmi_calculator/constants/constants.dart';

class ResultsCard extends StatefulWidget {
  @override
  _ResultsCardState createState() => _ResultsCardState();
}

double bmi = 18.3;
String result = 'Normal';
String interpretationBMI = 'Your BMI result is quite low, you should eat more!';

class _ResultsCardState extends State<ResultsCard> {
  @override
  Widget build(BuildContext context) {
    return CardMain(
      colour: kActiveCardColor,
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            result,
            style: kResultsTextStyle
          ),
          Text(
            bmi.toString(),
            style: kBMITextStyle
          ),
          Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                interpretationBMI,
                style: kInterpretationTextStyle,
                textAlign: TextAlign.start,
            ),
          )
        ]
      ),
    );
  }
}