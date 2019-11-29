
import 'package:combank_ui_challenge/ui/custom_drawer_menu.dart';
import 'package:combank_ui_challenge/view/custom_bottom_navigation_bar.dart';
import 'package:combank_ui_challenge/view/greetings_view.dart';
import 'package:flutter/material.dart';

import 'helpers/themes.dart';
import 'view/custom_button_menu_view.dart';

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
    int currentTab = 0;
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
      minimum: const EdgeInsets.all(0.0),
      bottom: false,
      top: false,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: CustomDrawer(),
        body: Container(
          height: _height,
          width: _width,
          color: comBankThemeData.primaryColor,
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                leading: InkWell(
                  child: MenuButton(
                    showText: false,
                    icon: Icons.dehaze,
                    paddingLeft: true,
                    paddingRight: false,
                    paddingTop: false,
                  ),
                  onTap: () {
                    _scaffoldKey.currentState.openDrawer();
                  },
                ),
                actions: <Widget>[
                  MenuButton(
                    showText: true,
                    icon: Icons.message,
                    paddingLeft: false,
                    paddingRight: true,
                    paddingTop: false,
                  )
                ],
                expandedHeight: _height * 0.09,
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    GreetingsSection(),
                    Card(child: Text('data'),),
                    Card(child: Text('data'),),
                    Card(child: Text('data'),),
                    Card(child: Text('data'),),

                    // Scrollable horizontal widget here
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Material(
          child: CommBankBottomNavigationBar(
              color: Colors.transparent,
              elevation: 0.0,
              index: currentTab,
              labelStyle: LabelStyle(visible: false),
              onTap: (i) {
                setState(() {
                  currentTab = i;
                });
              },
              items: [
                BottomNavItem(Icons.account_balance_wallet,),
                BottomNavItem(Icons.transform,),
                BottomNavItem(Icons.person_outline,),
                BottomNavItem(Icons.credit_card,),
                BottomNavItem(Icons.adb,),
                BottomNavItem(Icons.tap_and_play,),
              ],
            ),
        ),
        /*body: SingleChildScrollView(
          child: Container(
            width: _width,
            height: _height,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: _height*0.0,
                  child: Container(
                    color: comBankThemeData.primaryColor,
                    width: _width,
                    height: _height*0.12,
                    child: Padding(
                      padding: EdgeInsets.only(top: _height * 0.035),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: CustomMenu(
                              showText: false,
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
                            showText: true,
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
                Positioned(
                  top: _height*0.12,
                  child: Container(
                    height: _height * 0.3,
                    width: _width,
                    color: comBankThemeData.primaryColor,
                  ),
                ),
                Positioned(
                  top: _height*0.42,
                  child: Container(
                    height: _height * 0.35,
                    width: _width,
                    color: comBankThemeData.primaryColor,
                  ),
                ),
                Positioned(
                  top: _height*0.77,
                  child: Container(
                    height: _height * 0.23,
                    width: _width,
                    color: comBankThemeData.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),*/
      ),
    );
  }
}
