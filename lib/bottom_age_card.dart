import 'package:flutter/material.dart';
import 'card_main.dart';
import 'constants.dart';

class BottomAgeCard extends StatefulWidget {
  @override
  _BottomAgeCardState createState() => _BottomAgeCardState();
}

int age = 27;

class _BottomAgeCardState extends State<BottomAgeCard> {
  @override
  Widget build(BuildContext context) {
    return CardMain(
      colour: kActiveCardColor,
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'AGE',
            style: kLableTextStyle
          ),
          Text(
            age.toString(),
            style: kLableTextStyle,
              ),
          Row(
            children: <Widget>[

            ],
          ),
          ],
      ),
    );
  }
}