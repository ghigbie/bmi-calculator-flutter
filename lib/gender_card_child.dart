import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderCardChild extends StatelessWidget{

  GenderCardChild({@required this.displayIcon, @required this.displayText});
  final IconData displayIcon;
  final String displayText;

  @override
    Widget build(BuildContext context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            displayIcon,
            size: 80.0
          ),
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