import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FemaleCardChild extends StatelessWidget{

  @override
    Widget build(BuildContext context) {
      return Column(
        children: <Widget>[
          Icon(
            FontAwesomeIcons.venus,
            size: 80.0
          ),
          SizedBox(
            height: 15.0
          ),
          Text('FEMALE', style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98)
          ))
        ],
      );
    }
}