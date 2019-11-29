import 'package:combank_ui_challenge/model/DisplayGreetings.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';

class GreetingsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(_height*0.03),
      child: Container(
        width: _width,
        height: _height*0.14,
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(DisplayGreetings.getGreetings(),style: TextStyle(color: Colors.black,fontSize: _height*0.035,fontWeight: FontWeight.bold),),
            Padding(
              padding: EdgeInsets.only(top: _height*0.01),
              child: CustomButtonWidget(label:"Log on"),
            )
          ],
        ),
      ),
    );
  }
}
