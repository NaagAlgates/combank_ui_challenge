
import 'package:combank_ui_challenge/helpers/themes.dart';
import 'package:flutter/material.dart';

Widget customNavigationDrawer(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(40.0),
      child: Container(
        width: MediaQuery.of(context).size.height*.06,
        height: MediaQuery.of(context).size.height*.06,
        color: comBankThemeData.accentColor,
        child: Center(
          child: Icon(Icons.dehaze,size: MediaQuery.of(context).size.width*0.05,color: Colors.black87,),
        ),
      ),
    ),
  );
}