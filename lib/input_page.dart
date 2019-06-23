import 'package:flutter/material.dart';
import 'constants.dart';
import 'card_small.dart';
import 'card_large.dart';
import 'card_main.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(APP_TITLE)
      ),
      body: Center(
          child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(child: CardMain(colour: Color(CARD_COLOR_DEFAULT))),
                  Expanded(child: CardMain(colour: Color(CARD_COLOR_DEFAULT)))
                ],
              ),
            ),
            Expanded(child: CardMain(colour: Color(CARD_COLOR_DEFAULT))),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(child: CardMain(colour: Color(CARD_COLOR_DEFAULT))),
                  Expanded(child: CardMain(colour: Color(CARD_COLOR_DEFAULT)))
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}