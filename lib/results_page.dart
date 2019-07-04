import 'package:flutter/material.dart';
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
      body: Center(
        child: FlatButton(
          child: Text('Yo!'),
          onPressed: (){
            Navigator.pushNamed(context, '/');
          },
        ),
      )
    );
  }
}