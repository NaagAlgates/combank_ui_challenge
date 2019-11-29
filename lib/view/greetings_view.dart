import 'package:combank_ui_challenge/model/DisplayGreetings.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';

class GreetingsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Container(
      width: _width,
      height: _height*0.2,
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(DisplayGreetings.getGreetings()),
          CustomButtonWidget(label:"Log on")
        ],
      ),
    );
  }
}
