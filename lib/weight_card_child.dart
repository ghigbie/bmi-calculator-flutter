import 'package:flutter/material.dart';
import 'card_main.dart';
import 'constants.dart';

class WeightCardChild extends StatefulWidget {
  @override
  _WeightCardChildState createState() => _WeightCardChildState();
}

class _WeightCardChildState extends State<WeightCardChild> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CardMain(
        colour: kActiveCardColor
      )
    );
  }
}