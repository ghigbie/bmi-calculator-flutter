import 'package:flutter/material.dart';
import 'card_main.dart';
import 'constants.dart';

class ResultsCard extends StatefulWidget {
  @override
  _ResultsCardState createState() => _ResultsCardState();
}

double bmi;
String summaryBMI;
String descriptionBMI;

class _ResultsCardState extends State<ResultsCard> {
  @override
  Widget build(BuildContext context) {
    return CardMain(
      colour: kActiveCardColor,
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            summaryBMI,
            style: kLabelTextStyle
          ),
          Text(
            bmi.toString()
          )
        ]
      ),
    );
  }
}