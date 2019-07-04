import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/results_card.dart';
import 'package:bmi_calculator/components/large_bottom_button.dart';
import 'package:bmi_calculator/constants/constants.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding:EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kLargeHeaderStyles,
              ),
            )
          ),
          Expanded(
            flex: 5,
            child: ResultsCard(),
          ),
          LargeBottomButton(
            buttonText: 'RE-CALCULATE',
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      )
    );
  }
}