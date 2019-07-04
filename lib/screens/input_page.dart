import 'package:bmi_calculator/components/gender_card_child.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/components/card_main.dart';
import 'package:bmi_calculator/components/large_bottom_button.dart';
import 'package:bmi_calculator/components/bottom_weight_card.dart';
import 'package:bmi_calculator/components/bottom_age_card.dart';
import 'package:bmi_calculator/calculator_brain.dart';

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
                      style: kLabelTextStyle),
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
                          style: kLabelTextStyle
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
                  Expanded(child: BottomWeightCard()),
                    
                  Expanded(child: BottomAgeCard()), 
                ],
              ),
            ),
            LargeBottomButton(
              buttonText: 'CALCULATE',
              onTap: (){
                CalculatorBrain calculatorBrain = CalculatorBrain(
                  height: height,
                  weight: weight,
                );
                Navigator.pushNamed(context, '/results');
              }
            ),
          ],
        ),
      )
    );
  }
}
