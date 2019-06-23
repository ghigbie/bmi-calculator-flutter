import 'package:flutter/material.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPAgeState createState() => _InputPageState();
}

class _InputPAgeState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(APP_TITLE)
      ),
      body: Center(
        child: Text('Body Text')
      ),
    );
  }
}