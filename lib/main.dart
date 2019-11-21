import 'dart:developer';

import 'package:combank_ui_challenge/view/custom_drawer_menu.dart';
import 'package:flutter/material.dart';

import 'helpers/themes.dart';
import 'view/custom_menu_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: comBankThemeData,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    print("open");
  }

  @override
  void dispose() {
    print("close");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    return SafeArea(
      minimum: const EdgeInsets.all(0.0),
      bottom: false,
      top: false,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: CustomDrawer(),
        /*appBar: PreferredSize(
            preferredSize: Size.fromHeight(MediaQuery.of(context).size.height*0.1),
            child: AppBar(
              elevation: 0.0,
              backgroundColor:comBankThemeData.primaryColor,
              leading: Container(),
              flexibleSpace:
            ),
        ),*/
        body: SingleChildScrollView(
          child: Container(
            color: comBankThemeData.primaryColor,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: EdgeInsets.only(top: _height * 0.035),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: CustomMenu(
                      icon: Icons.dehaze,
                      paddingLeft: true,
                      paddingRight: false,
                      paddingTop: false,
                    ),
                    onTap: () {
                      _scaffoldKey.currentState.openDrawer();
                    },
                  ),
                  CustomMenu(
                    icon: Icons.message,
                    paddingLeft: false,
                    paddingRight: true,
                    paddingTop: false,
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
