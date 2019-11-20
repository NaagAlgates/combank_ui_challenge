

import 'package:flutter/material.dart';

import 'custom_menu_view.dart';


class CustomDrawer extends StatefulWidget {
  CustomDrawer({Key key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          width: _width*0.81,
          color: Colors.black,
        ),
        CustomMenu(icon: Icons.close,backgroundColor: Colors.white,iconColor: Colors.black,paddingLeft: true,paddingRight: false,paddingTop: true,),
      ],
    );
  }

}
