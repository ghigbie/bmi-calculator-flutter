import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPinkColor,
      margin: EdgeInsets.only(top: kBottomCardMargin),
      width: double.infinity,
      height: kBottomContainerHeight,
      child: Center(
        child: Text(kcalculate),
      )
    );
  }
}