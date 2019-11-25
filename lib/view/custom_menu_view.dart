import 'package:combank_ui_challenge/helpers/themes.dart';
import 'package:flutter/material.dart';

class CustomMenu extends StatefulWidget {
  var icon;
  var iconColor;
  var backgroundColor;
  var paddingRight = false, paddingLeft = false, paddingTop, showText;
  var _textVisibility = false;

  CustomMenu(
      {Key key,
      @required this.icon,
      this.iconColor,
      this.backgroundColor,
      @required this.showText,
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
    if (widget.showText) {
      displayText();
      hideText();
    }
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
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: _height * .06,
          width: widget.showText && widget._textVisibility
              ? _height * 0.1
              : _height * .06,
          color: widget.backgroundColor == null
              ? comBankThemeData.accentColor
              : widget.backgroundColor,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Icon(
                  widget.icon,
                  size: _height * 0.025,
                  color: widget.iconColor == null
                      ? Colors.black87
                      : widget.iconColor,
                ),
                Visibility(
                  visible: widget._textVisibility,
                  child: Padding(
                    padding: widget.showText && widget._textVisibility
                        ? EdgeInsets.only(left: _height * 0.008)
                        : const EdgeInsets.only(left: 0.0),
                    child: Text(
                      widget.showText && widget._textVisibility ? "Hi" : "",
                      style: TextStyle(
                          color: Colors.black, fontSize: _height * 0.021),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void displayText() {
    Future.delayed(const Duration(milliseconds: 1500), () {
      setState(() {
        widget._textVisibility = true;
      });
    });
  }

  void hideText() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      setState(() {
        widget._textVisibility = false;
      });
    });
  }
}
