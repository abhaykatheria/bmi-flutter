import 'package:flutter/material.dart';

import 'const.dart';


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
            style: kLabelTextStyle,
          ),
        ),
      ],
    );
  }
}
