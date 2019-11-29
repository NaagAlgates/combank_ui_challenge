import 'package:combank_ui_challenge/view/search_view.dart';
import 'package:flutter/material.dart';

class DrawerMenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
        child: Container(
        color: Colors.transparent,
        height: _height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SearchView(),
          ],
        ),
    ));
  }
}
