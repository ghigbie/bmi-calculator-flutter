import 'package:flutter/material.dart';
import 'constants.dart';

class CardSmall extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1/1,
        child: Container(
        margin: EdgeInsets.all(CARD_MARGIN),
        decoration: BoxDecoration(
          color: Color(0xFF1D1E33), //color must be added to box doraction 
          borderRadius: BorderRadius.circular(CARD_RADIUS)
          ),
        ),
      ),
    );
  }
}