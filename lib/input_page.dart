import 'package:flutter/material.dart';
import 'reusablecard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cardcontent.dart';


import 'const.dart';
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
  int height = 150;
  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;
  Gender selectedGender;
  int weight = 60;
  int age = 20;
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
                      colour: selectedGender == Gender.male?kActiveCardColor:kInactiveCardColor,
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
                      colour:selectedGender==Gender.female?kActiveCardColor:kInactiveCardColor,
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
                  colour: kInactiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Height',
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(height.toString(),style: kNumberTextStyle,
                          ),
                          Text('cm',style: kLabelTextStyle,),

                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbColor: Colors.pink,
                          overlayColor: Colors.pinkAccent,
                          activeTrackColor: Colors.red,
                          inactiveTrackColor: Colors.white70,

                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0,disabledThumbRadius:5.0 ),
                          overlayShape: RoundSliderOverlayShape( overlayRadius: 20.0),

                        ),
                        child: Slider(
                          value: height.toDouble(),
                          onChanged: (double newValue){
                            setState(() {
                              print(newValue);
                              height = newValue.toInt();
                            });
                          },
                          min: 100.0,
                          max: 200.0,

                        ),
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
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Age',style: kLabelTextStyle,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(
                                  age.toString(),style: kNumberTextStyle,
                                ),
                                 ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: <Widget>[
                                FloatingActionButton(
                                  child: Icon(FontAwesomeIcons.minus,color: Colors.white70,),
                                  onPressed: (){},
                                ),
                                SizedBox(width:20.0),
                                FloatingActionButton(
                                  child: Icon(FontAwesomeIcons.plus,color: Colors.white70,),
                                  onPressed: (){},
                                ),
                              ],
                            ),
                          ],
                        ) ,
                        colour: kInactiveCardColor,
                  ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardChild:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Weight',style: kLabelTextStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                weight.toString(),style: kNumberTextStyle,
                              ),
                              Text('Kg',style: kLabelTextStyle,),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: <Widget>[
                              FloatingActionButton(
                                child: Icon(FontAwesomeIcons.minus,color: Colors.white70,),
                                onPressed: (){},
                              ),
                              SizedBox(width:20.0),
                              FloatingActionButton(
                                child: Icon(FontAwesomeIcons.plus,color: Colors.white70,),
                                onPressed: (){},
                              ),
                            ],
                          ),
                        ],
                      ) ,
                      colour: kInactiveCardColor,
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
