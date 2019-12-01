import 'package:combank_ui_challenge/helpers/themes.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatefulWidget {
  final title, subtitle, icon, middleText;

  CustomCardType1(
      {Key key,
      @required this.title,
      this.subtitle,
      this.icon,
      this.middleText})
      : assert(title != null);

  @override
  _CustomCardType1State createState() => _CustomCardType1State();
}

class _CustomCardType1State extends State<CustomCardType1> {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(_height * 0.01),
      child: Card(
        color: Colors.white,
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Container(
          color: Colors.transparent,
          height: widget.middleText != null &&
                  widget.subtitle != null &&
                  widget.title != null
              ? _height * 0.24
              : widget.subtitle != null &&
              widget.title != null?_height * 0.15:_height*0.12,
          child: Padding(
            padding: EdgeInsets.all(_height * 0.03),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: widget.subtitle != null
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: widget.subtitle != null
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top:0.0),
                      child: Container(
                        width: _width*0.5,
                        child: Text(
                          widget.title,
                          maxLines: 4,
                          style: TextStyle(
                              fontSize: _height * 0.025,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    widget.middleText != null
                        ? Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Text(
                              "\$${widget.middleText}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: _height * 0.03,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        : Container(),
                    widget.subtitle != null
                        ? Padding(
                            padding:  widget.middleText!=null?EdgeInsets.only(top: 20.0):EdgeInsets.only(top: 10.0),
                            child: Text(
                              widget.subtitle,
                              style: TextStyle(
                                  fontSize: _height * 0.02,
                                  color: Colors.black54),
                            ),
                          )
                        : Container()
                  ],
                ),
                Icon(
                  widget.icon,
                  color: comBankThemeData.primaryColor,
                  size: _height * 0.06,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
