import 'package:bmi_calculator/gender_card_child.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'card_main.dart';
import 'bottom_button.dart';

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
                  Expanded(child: 
                    CardMain(
                      colour: ACTIVE_CARD_COLOR,
                      cardChild: GenderCardChild(
                        displayIcon: Icon(FontAwesomeIcons.mars, size: 80.0),
                        displayText: MALE),
                        )
                      ),
                  Expanded(child: 
                    CardMain(
                      colour: ACTIVE_CARD_COLOR,
                      cardChild: GenderCardChild(
                        displayIcon: Icon(FontAwesomeIcons.venus, size: 80.0),
                        displayText: FEMALE)
                     )
                    )
                ],
              ),
            ),
            Expanded(child: 
              CardMain(colour: ACTIVE_CARD_COLOR)),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(child: 
                    CardMain(colour: ACTIVE_CARD_COLOR)),
                  Expanded(child: 
                    CardMain(colour: ACTIVE_CARD_COLOR))
                ],
              ),
            ),
            BottomButton(),
          ],
        ),
      )
    );
  }
}
