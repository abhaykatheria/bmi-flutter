import 'package:flutter/material.dart';
import 'reusablecard.dart';
import 'const.dart';

class Result extends StatelessWidget {
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
                          'aone',
                          style: kResultTextStyle,
                        ))),
                    Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Center(
                            child: Text(
                          'aone',
                          style: kResultNumberTextStyle,
                        ))),
                    Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Center(
                            child: Text(
                          'aone',
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
