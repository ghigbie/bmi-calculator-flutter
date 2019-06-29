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
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kAppTitle)
      ),
      body: Center(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: CardMain(
                    onPress: (){
                      setState((){
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male ? kActiveCardColor : kInactiveCardColor,
                    cardChild: GenderCardChild(
                        icon: kMaleIcon,
                        label: kmale),
                        )
                      ),
                  Expanded(
                    child: CardMain(
                      onPress: (){
                        setState((){
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female ? kActiveCardColor : kInactiveCardColor,
                      cardChild: GenderCardChild(
                          icon: kFemaleIcon,
                          label: kFemale)
                     )
                    )
                ],
              ),
            ),
            Expanded(
              child: CardMain(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kLableTextStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kLargeTextStyle,
                        ),
                        Text(
                          'cm',
                          style: kLableTextStyle
                        )
                      ],
                    ),
                    SliderTheme(  
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Color(0xFFFFFFFF),
                          inactiveTrackColor: Color(0xFF8D8E98),
                          thumbColor: kPinkColor,
                          overlayColor: kPinkTransparent,
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)
                        ),                  
                        child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue){
                          setState((){
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              )
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(child: 
                    CardMain(colour: kActiveCardColor)),
                  Expanded(child: 
                    CardMain(colour: kActiveCardColor))
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
