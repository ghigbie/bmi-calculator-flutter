import 'package:flutter/material.dart';
import 'results_card.dart';
import 'large_bottom_button.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
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
              Navigator.pushNamed(context, '/');
            },
          ),
        ],
      )
    );
  }
}