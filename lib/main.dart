import 'package:flutter/material.dart';
import 'input_page.dart';
import 'const.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData.dark().copyWith(
          primaryColor: const Color(0xff0A0E21),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: kActiveCardColor
          ,),
          scaffoldBackgroundColor: const Color(0xff0A0E21),

      ),
      home: InputPage(),
    );
  }
}
