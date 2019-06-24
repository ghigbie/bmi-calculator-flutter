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
  Color maleCardColor = INACTIVE_CARD_COLOR;
  Color femaleCardColor = INACTIVE_CARD_COLOR;

  void updateColor(int genderNumber){
    if(genderNumber == 1){
      if(maleCardColor == INACTIVE_CARD_COLOR){
        maleCardColor = ACTIVE_CARD_COLOR;
        femaleCardColor = INACTIVE_CARD_COLOR;
      }else{
        maleCardColor = INACTIVE_CARD_COLOR;
        femaleCardColor = ACTIVE_CARD_COLOR;
      }
    }else if(genderNumber == 2){
      if(femaleCardColor == INACTIVE_CARD_COLOR){
        femaleCardColor = ACTIVE_CARD_COLOR;
        maleCardColor = INACTIVE_CARD_COLOR;
      }else{
        femaleCardColor = INACTIVE_CARD_COLOR;
        maleCardColor = ACTIVE_CARD_COLOR;
      }
    }
  }

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
                          updateColor(1);
                        });
                        },
                      child: CardMain(
                      colour: maleCardColor,
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
                          updateColor(2);
                        });
                      },
                      child: CardMain(
                      colour: femaleCardColor,
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
