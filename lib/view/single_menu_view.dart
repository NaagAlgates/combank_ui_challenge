import 'package:flutter/material.dart';

class SingleMenuView extends StatelessWidget {
  final leftIcon;
  final rightIcon;
  final label;
  final divider;

  SingleMenuView(
      {Key key,
      this.leftIcon,
      this.rightIcon,
      this.divider,
      @required this.label})
      : assert(label != null);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
          left: _height * 0.01, top: _height * 0.03, right: _height * 0.01),
      child: Container(
        width: _width,
        height: _height * 0.04,
        color: Colors.transparent,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: rightIcon == null
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    leftIcon!=null?Icon(
                      leftIcon,
                      color: Colors.white,
                      size: _height * 0.028,
                    ):Container(),
                    Padding(
                      padding: EdgeInsets.only(left: leftIcon!=null?_height * 0.02:0.0),
                      child: Text(
                        label,
                        style: TextStyle(
                            color: Colors.white, fontSize: _height * 0.019),
                      ),
                    )
                  ],
                ),
                rightIcon!=null?Icon(
                  rightIcon,
                  color: Colors.white,
                  size: _height * 0.028,
                ):Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
