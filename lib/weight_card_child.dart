import 'package:flutter/material.dart';
import 'card_main.dart';
import 'constants.dart';

class WeightCardChild extends StatefulWidget {
  @override
  _WeightCardChildState createState() => _WeightCardChildState();
}

int weigth = 60;

class _WeightCardChildState extends State<WeightCardChild> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CardMain(
        colour: kActiveCardColor,
        cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'WEIGHT',
              style: kLableTextStyle
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Text(
                  weigth.toString(),
                  style: kLargeTextStyle,
                ),
                Text(
                  'cm',
                  style: kLableTextStyle
                )
              ],
            ),
            Slider(
              value: weigth.toDouble(),
              min: 20,
              max: 220,
              activeColor: Color(0xFFEB1555),
              inactiveColor: Color(0xFF8D8E98),
              onChanged: (double newValue){
                setState((){
                  weigth = newValue.round();
                });
              }
            )
        ],)
      )
    );
  }
}