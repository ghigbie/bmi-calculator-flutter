import 'package:flutter/material.dart';
import 'results_card.dart';
import 'large_bottom_button.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YOUR RESULT',
          style: kLargeHeaderStyles,),
      ),
      body: Column(
        children: <Widget>[

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