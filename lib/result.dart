import 'package:flutter/material.dart';
import 'reusablecard.dart';
import 'const.dart';
import 'dart:math';
import 'input_page.dart';
class Result extends StatelessWidget {
  final int height;
  final int weight;

  Result({this.weight, this.height, Gender gender});

  double getBmi() {
    return weight / pow(height / 100, 2);
  }


  String getResult() {
    double b = getBmi();
    if (b < 18.5)
      return 'Underweight';
    if (b >= 18.5 && b < 25)
      return 'Fit';
    if (b >= 25)
      return 'Overweight';
  }

  String getMessage() {
    double b = getBmi();
    if (b < 18.5)
      return 'Eat more healthy Food';
    if (b >= 18.5 && b < 25)
      return 'Build some muscle now your bmi is perfect';
    if (b >= 25)
      return 'Stop eating those Burgers and Do some Cardio';
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 30.0),
                child: Text(
                  'Your Result',
                  style: kNumberTextStyle,
                )),
            Expanded(
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Center(
                            child: Text(
                              getResult(),
                              style: kResultTextStyle,
                            ))),
                    Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Center(
                            child: Text(
                              getBmi().toStringAsFixed(2),
                              style: kResultNumberTextStyle,
                            ))),
                    Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Center(
                            child: Text(
                              getMessage(),
                              style: kMessageTextStyle,
                            ))),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  color: Colors.pink,
                  height: 70.0,
                  child: Center(
                      child: Text(
                        'Recalculate your BMI',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
