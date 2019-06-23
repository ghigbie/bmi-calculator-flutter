import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderCardChild extends StatelessWidget{

  GenderCardChild({@required this.displayIcon, @required this.displayText});
  final Icon displayIcon;
  final String displayText;

  @override
    Widget build(BuildContext context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          displayIcon,
          SizedBox(
            height: 15.0
          ),
          Text(displayText, style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98)
          ))
        ],
      );
    }
}