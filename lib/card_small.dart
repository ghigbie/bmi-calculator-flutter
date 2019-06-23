import 'package:flutter/material.dart';
import 'constants.dart';

class CardSmall extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1/1.25,
        child: Container(
        margin: EdgeInsets.all(CARD_MARGIN),
        decoration: BoxDecoration(
          color: Color(CARD_COLOR_DEFAULT), //color must be added to box doraction 
          borderRadius: BorderRadius.circular(CARD_RADIUS)
          ),
        ),
      ),
    );
  }
}