import 'package:flutter/material.dart';


const labelTextStyle=TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20.0,
  color: Colors.grey,
);

const numberTextStyle = TextStyle(
    fontSize: 50.0,
    fontWeight:  FontWeight.w900);

class CardContent extends StatelessWidget {
  CardContent({this.icon,this.contentText});
  final Icon icon;
  final String contentText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        icon,
        SizedBox(
          height: 20.0,
        ),
        Center(
          child: Text(
            contentText,
            style: labelTextStyle,
          ),
        ),
      ],
    );
  }
}
