import 'package:combank_ui_challenge/helpers/themes.dart';
import 'package:flutter/material.dart';

class MenuButton extends StatefulWidget {
  final icon;
  final iconColor;
  final backgroundColor;
  final paddingRight, paddingLeft, paddingTop, showText;

  MenuButton(
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
  _MenuButtonState createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  var _textVisibility = false;
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
          right: widget.paddingRight ? _height * 0.01 : 0.0,
          left: widget.paddingLeft ? _height * 0.01 : 0.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(_height),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: 45.0,
          width: widget.showText && _textVisibility
              ? _height * 0.1
              : 45.0,
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
                  size: _height * 0.0225,
                  color: widget.iconColor == null
                      ? Colors.black87
                      : widget.iconColor,
                ),
                Visibility(
                  visible: _textVisibility,
                  child: Padding(
                    padding: widget.showText && _textVisibility
                        ? EdgeInsets.only(left: _height * 0.008)
                        : const EdgeInsets.only(left: 0.0),
                    child: Text(
                      widget.showText && _textVisibility ? "Hi" : "",
                      style: TextStyle(
                          color: Colors.black, fontSize: _height * 0.020),
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
        _textVisibility = true;
      });
    });
  }

  void hideText() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      setState(() {
        _textVisibility = false;
      });
    });
  }
}
