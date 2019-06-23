import 'package:flutter/material.dart';
import 'constants.dart';

class CardMain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(CARD_MARGIN),
      decoration: BoxDecoration(
        color: Color(CARD_COLOR_DEFAULT)
      ),
    );
  }
}