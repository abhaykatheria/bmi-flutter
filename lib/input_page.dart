import 'package:flutter/material.dart';
import 'reusablecard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cardcontent.dart';


Color activeCardColor = Color(0xff1d1e33);
Color inactiveCardColor=Color(0xff111328);
//1=male,2=female

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender {
  male,
  female,
}


class _InputPageState extends State<InputPage> {

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: selectedGender == Gender.male?activeCardColor:inactiveCardColor,
                      cardChild: CardContent(
                            icon: Icon(
                              FontAwesomeIcons.mars,
                              size: 80.0,
                            ),
                        contentText: 'Male',
                      ),
                      onpress:(){
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      } ,
                    ),
                  ),
                  Expanded(
                    child:  ReusableCard(
                      onpress: (){
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour:selectedGender==Gender.female?activeCardColor:inactiveCardColor,
                      cardChild: CardContent(
                        icon: Icon(
                          FontAwesomeIcons.venus
                          ,size: 80.0,
                        ),
                        contentText: 'Female',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                  cardChild: Column(
                    children: <Widget>[
                      Text(
                        'height',
                        style: labelTextStyle,
                      ),
                      Row(
                        children: <Widget>[
                          Text('180',style: numberTextStyle,

                          )
                        ],
                      )
                    ],
                  ),
            ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReusableCard(
                    colour: activeCardColor,
                  )),
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.pink,
              height: 70.0,
              child: Center(
                  child: Text(
                'Calculate your BMI',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              )),
            )
          ],
        ),
    );
  }
}
