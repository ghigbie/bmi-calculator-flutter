import 'package:flutter/material.dart';
import 'card_main.dart';
import 'constants.dart';

class HeightCardChild extends StatefulWidget {
  @override
  _HeightCardChildState createState() => _HeightCardChildState();
}

int height = 180;

class _HeightCardChildState extends State<HeightCardChild> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
              child: CardMain(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kLableTextStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kLargeTextStyle,
                        ),
                        Text(
                          'cm',
                          style: kLableTextStyle
                        )
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue){
                        setState((){
                          height = newValue.round();
                        });
                      },
                    ),
                  ],
                ),
              )
            );
  }
}
