import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_main.dart';
import 'round_icon_button.dart';
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
        crossAxisAlignment: CrossAxisAlignment.center,
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
                weight.toString(),
                style: kLargeTextStyle,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RoundIconButton(
                icon: FontAwesomeIcons.minus,
                onPressed: () {
                  setState((){
                    weight--;
                  });
                }
                ),
              SizedBox(width: 10.0),
              RoundIconButton(
                icon: FontAwesomeIcons.plus,
                onPressed: (){
                  setState((){
                    weight++;
                  });
                }
                ),
            ],
          )
        ],
      ),
    );
  }
}