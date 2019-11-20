import 'dart:developer';

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

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(0.0),
      bottom: false,
      top: false,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          color: Colors.black87,
        ),
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
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customMenuView(context,Icons.dehaze),
                    customMenuView(context,Icons.message)
                  ],
                ),
              ),
            ),
        ),
      ),
    );
  }
}
