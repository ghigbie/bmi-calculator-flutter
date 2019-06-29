import 'package:flutter/material.dart';
import 'card_main.dart';
import 'constants.dart';

class BottomWeightCard extends StatefulWidget {
  @override
  _BottomWeightCardState createState() => _BottomWeightCardState();
}

int weight = 60;

class _BottomWeightCardState extends State<BottomWeightCard> {
  @override
  Widget build(BuildContext context) {
    return CardMain(
      colour: kActiveCardColor,
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'WEIGHT',
            style: kLableTextStyle
          ),
          Row(
            children: <Widget>[
              Text(
                weight.toString(),
                style: kLargeTextStyle,
              ),
              Text(
                'kg',
                style: kLableTextStyle
              )
            ],
          ),
          Row(
            children: <Widget>[
              FlatButton(
                child: Text(
                  '-',
                  style: kLargeTextStyle
                  ),
              )
            ],
          )
        ],
      ),
    );
  }
}