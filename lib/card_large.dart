import 'package:flutter/material.dart';
import 'constants.dart';

class CardLarge extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(CARD_MARGIN),
        decoration: BoxDecoration(
          color: Color(CARD_COLOR_DEFAULT),
          borderRadius: BorderRadius.circular(CARD_RADIUS)
        )
      )
    );
  }
}