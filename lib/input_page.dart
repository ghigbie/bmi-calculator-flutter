import 'package:flutter/material.dart';
import 'constants.dart';
import 'card_small.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPAgeState createState() => _InputPageState();
}

class _InputPAgeState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(APP_TITLE)
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              CardSmall(),
              CardSmall(),
            ],
          ),
          CardSmall(),
          Row(
            children: <Widget>[
              CardSmall(),
              CardSmall(),
            ],
          )
        ],
      )
    );
  }
}