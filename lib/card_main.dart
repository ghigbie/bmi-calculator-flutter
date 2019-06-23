import 'package:flutter/material.dart';
import 'constants.dart';

class CardMain extends StatelessWidget{

  CardMain({@required this.colour});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(CARD_MARGIN),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(CARD_RADIUS)
      ),
    );
  }
}