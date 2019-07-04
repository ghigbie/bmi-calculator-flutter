import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/constants.dart';

class CardMain extends StatelessWidget{

  CardMain({@required this.colour, this.cardChild, this.onPress});
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: onPress,
          child: Container(
            child: cardChild,
            margin: EdgeInsets.all(kCardMargin),
            decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(kCardRadius)
        ),
      ),
    );
  }
}