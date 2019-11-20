
import 'package:combank_ui_challenge/helpers/themes.dart';
import 'package:flutter/material.dart';

Widget customMenuView(BuildContext context,var icon) {
  var _height = MediaQuery.of(context).size.height;
  return Padding(
    padding: EdgeInsets.only(top:_height*0.035,right: _height*0.02,left: _height*0.02,bottom: _height*0.02),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(_height),
      child: Container(
        width: _height*.06,
        height: _height*.06,
        color: comBankThemeData.accentColor,
        child: Center(
          child: Icon(icon,size:_height*0.025,color: Colors.black87,),
        ),
      ),
    ),
  );
}