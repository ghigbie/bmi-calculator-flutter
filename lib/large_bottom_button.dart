import 'package:flutter/material.dart';
import 'constants.dart';

class LargeBottomButton extends StatelessWidget {

  LargeBottomButton({@required this.onTap});

  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
            onTap: onTap,
            child: Container(
            color: kPinkColor,
            margin: EdgeInsets.only(top: kBottomCardMargin),
            width: double.infinity,
            height: kBottomContainerHeight,
            child: Center(
              child: Text(
                kcalculate,
                style: kLageButtonTextStyles,
          ),
        )
      ),
    );
  }
}