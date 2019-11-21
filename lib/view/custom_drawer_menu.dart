import 'package:flutter/material.dart';

import 'custom_menu_view.dart';

class CustomDrawer extends StatefulWidget {
  CustomDrawer({Key key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer>
    with TickerProviderStateMixin {
  var _viewVisibility;
  @override
  void initState() {
    super.initState();
    print("Drawer open");
    _viewVisibility = false;
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _viewVisibility = true;
      });
    });
  }

  @override
  void dispose() {
    print("Drawer close");
    super.dispose();
  }

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
          width: _width * 0.78,
          color: Colors.black,
        ),
        Visibility(
            visible: _viewVisibility,
            child:
            InkWell(
              child: CustomMenu(
              icon: Icons.close,
              backgroundColor: Colors.white,
              iconColor: Colors.black,
              paddingLeft: true,
              paddingRight: true,
              paddingTop: true,
            ),
              onTap: (){
                setState(() {
                  _viewVisibility=false;
                });
                Future.delayed(const Duration(milliseconds: 250), () {
                  setState(() {
                    Navigator.pop(context);
                  });
                });
              },
          ),
        ),
      ],
    );
  }
}
