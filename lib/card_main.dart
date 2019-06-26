import 'package:flutter/material.dart';
import 'constants.dart';

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
            margin: EdgeInsets.all(CARD_MARGIN),
            decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(CARD_RADIUS)
        ),
      ),
    );
  }
}