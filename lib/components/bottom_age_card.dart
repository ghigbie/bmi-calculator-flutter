import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_main.dart';
import 'round_icon_button.dart';
import 'package:bmi_calculator/constants/constants.dart';

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
            style: kLabelTextStyle
          ),
          Text(
            age.toString(),
            style: kLargeTextStyle,
              ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RoundIconButton(
                icon: FontAwesomeIcons.minus,
                onPressed: (){
                  setState((){
                    age--;
                  });
                }),
              SizedBox(width: 10.0),
              RoundIconButton(
                icon: FontAwesomeIcons.plus,
                onPressed: (){
                  setState((){
                    age++;
                  });
                }),
            ],
          ),
          ],
      ),
    );
  }
}