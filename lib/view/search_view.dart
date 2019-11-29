import 'dart:math';

import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: _height * 0.01, right: _height * 0.02),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(2.0),
          child: Container(
            color: Colors.white,
            height: _height * 0.05,
            width: _width,
            child: Padding(
              padding: EdgeInsets.only(left: _height*0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Icon(
                    Icons.search,color: Colors.black54,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        counterText: ""
                      ),
                      maxLength: 15,
                      autovalidate: false,
                      autocorrect: false,
                      autofocus: false,
                      onTap: (){
                        print("Search Clicked");
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
