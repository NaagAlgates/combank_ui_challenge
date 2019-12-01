import 'package:flutter/material.dart';

class SingleFloatingMenu extends StatelessWidget {
  final icon, label;

  SingleFloatingMenu({Key key, @required this.icon, @required this.label})
      : assert(label != null && icon != null);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Container(
        color: Colors.white,
        child: Container(
          decoration:BoxDecoration(border: Border.all(color: Colors.black12, width: 0.5)),
          child: Center(
            child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Icon(icon), Text(label)]),
          ),
        ),
      ),
    );
  }
}
