import 'package:combank_ui_challenge/helpers/themes.dart';
import 'package:flutter/material.dart';

class CustomMenu extends StatefulWidget {
  var icon;
  var iconColor;
  var backgroundColor;
  var paddingRight = false, paddingLeft = false, paddingTop;

  CustomMenu(
      {Key key,
      @required this.icon,
      this.iconColor,
      this.backgroundColor,
      @required this.paddingTop,
      @required this.paddingLeft,
      @required this.paddingRight})
      : assert(icon != null &&
            paddingLeft != null &&
            paddingRight != null &&
            paddingTop != null);

  @override
  _CustomMenuState createState() => _CustomMenuState();
}

class _CustomMenuState extends State<CustomMenu> {
  @override
  void initState() {
    super.initState();
    print("menu open");
  }

  @override
  void dispose() {
    print("menu close");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(
          top: widget.paddingTop ? _height * 0.042 : _height * 0.01,
          right: widget.paddingRight ? _height * 0.02 : 0.0,
          left: widget.paddingLeft ? _height * 0.02 : 0.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(_height),
        child: Container(
          width: _height * .06,
          height: _height * .06,
          color: widget.backgroundColor == null
              ? comBankThemeData.accentColor
              : widget.backgroundColor,
          child: Center(
            child: Icon(
              widget.icon,
              size: _height * 0.025,
              color:
                  widget.iconColor == null ? Colors.black87 : widget.iconColor,
            ),
          ),
        ),
      ),
    );
  }
}
