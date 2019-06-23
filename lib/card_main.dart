import 'package:flutter/material.dart';
import 'constants.dart';

class CardMain extends StatelessWidget{

  CardMain({@required this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(CARD_MARGIN),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(CARD_RADIUS)
      ),
    );
  }
}