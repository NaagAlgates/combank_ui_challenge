import 'package:combank_ui_challenge/ui/custom_drawer_menu.dart';
import 'package:combank_ui_challenge/view/custom_bottom_navigation_bar.dart';
import 'package:combank_ui_challenge/view/custom_card_type1.dart';
import 'package:combank_ui_challenge/ui/floating_menu.dart';
import 'package:combank_ui_challenge/view/greetings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  ScrollController _scrollBottomBarController = ScrollController();
  bool isScrollingDown = false;
  bool _show = false;
  double bottomBarHeight = 75;
  double _bottomBarOffset = 0;

  @override
  void initState() {
    super.initState();
    print("open");
    myScroll();
  }

  @override
  void dispose() {
    _scrollBottomBarController.removeListener(() {});
    print("close");
    super.dispose();
  }

  void showBottomBar() {
    setState(() {
      _show = true;
    });
  }

  void hideBottomBar() {
    setState(() {
      _show = false;
    });
  }

  void myScroll() async {
    _scrollBottomBarController.addListener(() {
      if (_scrollBottomBarController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          hideBottomBar();
        }
      }
      if (_scrollBottomBarController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          showBottomBar();
        }
      }
    });
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
        body: Stack(children: <Widget>[
          Container(
            height: _height,
            width: _width,
            color: comBankThemeData.primaryColor,
            child: CustomScrollView(
              controller: _scrollBottomBarController,
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
                SliverPadding(
                  padding: EdgeInsets.only(bottom: _height * 0.3),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        GreetingsSection(),
                        CustomCardType1(
                          title: "Cardless Cash",
                          subtitle: "Find your nearest ATM",
                        ),
                        CustomCardType1(
                          title: "NetBank Saver Available funds",
                          subtitle: "Balance \$30003.89",
                          middleText: 30003.89,
                          icon: Icons.monetization_on,
                        ),
                        CustomCardType1(
                          title: "December cashflow",
                          subtitle: "Log on to view",
                          icon: Icons.view_column,
                        ),
                        CustomCardType1(
                          title: "CommBank Rewards",
                          subtitle: "Log on to view",
                          icon: Icons.card_giftcard,
                        ),
                        CustomCardType1(
                          title: "Spend Categories",
                          subtitle: "Log on to view",
                          icon: Icons.restaurant,
                        ),
                        CustomCardType1(
                          title: "Home screen settings",
                          icon: Icons.add,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: !_show
                ? Container(
                    height: _height * 0.25,
                    child: FloatingMenu(),
                  )
                : Container(
                    height: 0.0,
                  ),
          ),
        ]),
        bottomNavigationBar: _show
            ? Material(
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
                    BottomNavItem(
                      Icons.account_balance_wallet,
                    ),
                    BottomNavItem(
                      Icons.transform,
                    ),
                    BottomNavItem(
                      Icons.person_outline,
                    ),
                    BottomNavItem(
                      Icons.credit_card,
                    ),
                    BottomNavItem(
                      Icons.format_bold,
                    ),
                    BottomNavItem(
                      Icons.tap_and_play,
                    ),
                  ],
                ),
              )
            : Container(
                height: 0.0,
              ),
      ),
    );
  }
}
