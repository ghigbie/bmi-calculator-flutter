import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/constants.dart';

class LargeBottomButton extends StatelessWidget {

  LargeBottomButton({this.buttonText, @required this.onTap});

  final String buttonText;
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
              padding:EdgeInsets.only(bottom: 20.0),
              child: Center(
                child: Text(
                  buttonText,
                  style: kLageButtonTextStyles,
          ),
        )
      ),
    );
  }
}