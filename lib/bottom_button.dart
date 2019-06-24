import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BOTTOM_CONTAINER_COLOR,
      margin: EdgeInsets.only(top: BOTTOM_CARD_MARGIN),
      width: double.infinity,
      height: BOTTOM_CONTAINER_HEIGHT,
      child: Center(
        child: Text(CALCULATE),
      )
    );
  }
}