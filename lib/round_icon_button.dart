import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  
  RoundIconButton({this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: child,
      onPressed: (){
        print('button pressed');
      },
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0
      ),
      shape: CircleBorder(),
      fillColor: kRoundButtonColor,
    );
  }
}