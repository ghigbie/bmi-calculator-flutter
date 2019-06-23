import 'package:flutter/material.dart';
import 'constants.dart';
import 'card_small.dart';

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
        ),
      )
    );
  }
}