import 'package:bmi_calculator/gender_card_child.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'card_main.dart';
import 'bottom_button.dart';

enum Gender{
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

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
                  Expanded(
                    child: GestureDetector(
                      onTap: () { 
                        setState(() {
                          selectedGender = Gender.male;
                        });
                        },
                      child: CardMain(
                      colour: selectedGender == Gender.male ? ACTIVE_CARD_COLOR : INACTIVE_CARD_COLOR,
                      cardChild: GenderCardChild(
                          icon: MALE_ICON,
                          label: MALE),
                          ),
                    )
                      ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: CardMain(
                      colour: selectedGender == Gender.female ? ACTIVE_CARD_COLOR : INACTIVE_CARD_COLOR,
                      cardChild: GenderCardChild(
                          icon: FEMALE_ICON,
                          label: FEMALE)
                       ),
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
