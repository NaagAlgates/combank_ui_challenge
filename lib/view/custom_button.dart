
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final label;
  CustomButtonWidget(
      {Key key,
        @required this.label})
      : assert(label != null);
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width= MediaQuery.of(context).size.width;
    return RaisedButton(elevation: 10.0,
      child: Text(label,style: TextStyle(color: Colors.white,fontSize: _height*0.02),),
      color: Colors.black,
      onPressed: (){
        print("Button pressed");
      },
    );
  }
}
