

import 'package:combank_ui_challenge/helpers/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget customDrawerMenu(BuildContext context) {

  var _height = MediaQuery.of(context).size.height;
  var _width = MediaQuery.of(context).size.width;
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Container(
        width: _width*0.8,
        color: Colors.black,
      ),
      Icon(Icons.close,size:_height*0.025,color: Colors.white,),
    ],
  );
}
