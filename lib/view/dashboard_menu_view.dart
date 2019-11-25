

import 'package:combank_ui_challenge/helpers/themes.dart';
import 'package:flutter/material.dart';

class DashboardMenu extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: comBankThemeData,
      home: mainMenu(context),
    );
  }
}

@override
Widget mainMenu(BuildContext context) {
  var _height = MediaQuery.of(context).size.height;
  var _width = MediaQuery.of(context).size.width;
  return Container(
    width: _width*0.5,
    color: Colors.red,
  );
}