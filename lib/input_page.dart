import 'package:flutter/material.dart';
import 'constants.dart';
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
                  Expanded(child: CardMain(colour: ACTIVE_CARD_COLOR)),
                  Expanded(child: CardMain(colour: ACTIVE_CARD_COLOR))
                ],
              ),
            ),
            Expanded(child: CardMain(colour: ACTIVE_CARD_COLOR)),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(child: CardMain(colour: ACTIVE_CARD_COLOR)),
                  Expanded(child: CardMain(colour: ACTIVE_CARD_COLOR))
                ],
              ),
            ),
            Container(
              color: BOTTOM_CONTAINER_COLOR,
              margin: EdgeInsets.only(top: BOTTOM_CARD_MARGIN),
              width: double.infinity,
              height: BOTTOM_CONTAINER_HEIGHT,
            )
          ],
        ),
      )
    );
  }
}