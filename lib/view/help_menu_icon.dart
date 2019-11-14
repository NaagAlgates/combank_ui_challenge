
import 'package:combank_ui_challenge/helpers/themes.dart';
import 'package:flutter/material.dart';

Widget customMessageView(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(90.0),
      child: Container(
        width: MediaQuery.of(context).size.height*.05,
        height: MediaQuery.of(context).size.height*.05,
        color: comBankThemeData.accentColor,
        child: Center(
          child: Icon(Icons.message,size: 16.0,color: Colors.black87,),
        ),
      ),
    ),
  );
}