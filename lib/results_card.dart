import 'package:flutter/material.dart';
import 'card_main.dart';
import 'large_bottom_button.dart';
import 'constants.dart';

class ResultsCard extends StatefulWidget {
  @override
  _ResultsCardState createState() => _ResultsCardState();
}

double bmi = 0.0;
String summaryBMI = 'Normal';
String descriptionBMI = 'There some stuff to put here"';

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
            bmi.toString(),
            style: kLargeTextStyle
          ),
          Text(
            descriptionBMI
          )
        ]
      ),
    );
  }
}