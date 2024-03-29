import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderCardChild extends StatelessWidget{

  GenderCardChild({@required this.icon, @required this.label});
  final IconData icon;
  final String label;

  @override
    Widget build(BuildContext context) {
      return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon,
                  size: kIconSize,
                ),
                SizedBox(
                  height: 15.0
                ),
                Text(label, style: kLabelTextStyle)
        ],
      );
    }
}