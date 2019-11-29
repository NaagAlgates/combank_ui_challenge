import 'package:combank_ui_challenge/view/search_view.dart';
import 'package:combank_ui_challenge/view/single_menu_view.dart';
import 'package:flutter/material.dart';

class DrawerMenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Container(
        color: Colors.transparent,
        height: _height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SearchView(),
              SingleMenuView(
                label: "Chat with us",
                leftIcon: Icons.message,
              ),
              SingleMenuView(
                label: "My details",
                leftIcon: Icons.person_outline,
              ),
              SingleMenuView(
                label: "What's new",
                leftIcon: Icons.star_border,
                rightIcon: Icons.navigate_next,
              ),
              SingleMenuView(
                label: "Products & offers",
                leftIcon: Icons.local_offer,
              ),
              SingleMenuView(
                label: "Find ATMa & branches",
                leftIcon: Icons.location_on,
              ),
              SingleMenuView(
                label: "Bills and upcoming payments",
                leftIcon: Icons.calendar_today,
              ),
              SingleMenuView(
                label: "Shared expenses",
                leftIcon: Icons.group,
              ),
              SingleMenuView(
                label: "Get cardless cash",
                leftIcon: Icons.card_membership,
              ),
              SingleMenuView(
                label: "PayID",
                leftIcon: Icons.person,
              ),
              SingleMenuView(
                  label: "Benefits finder",
                  leftIcon: Icons.location_searching,
                  rightIcon: Icons.call_made),
              SingleMenuView(
                label: "My notifications",
                leftIcon: Icons.notifications,
              ),
              SingleMenuView(
                label: "Overseas travel",
                leftIcon: Icons.flight,
              ),
              SingleMenuView(
                label: "Proof of balance",
                leftIcon: Icons.description,
              ),
              SingleMenuView(
                label: "ATM deposit codes",
                leftIcon: Icons.dashboard,
              ),
              SingleMenuView(
                label: "Settings & security",
                leftIcon: Icons.settings,
                rightIcon: Icons.navigate_next,
                divider: true,
              ),
              Divider(
                height: _height * 0.02,
                color: Colors.white54,
              ),
              SingleMenuView(label: "Help"),
              SingleMenuView(label: "Your feedback"),
              Divider(
                height: _height * 0.02,
                color: Colors.white54,
              ),
              SingleMenuView(
                  label: "Other CommBank apps",
                  rightIcon: Icons.navigate_next),
              SingleMenuView(
                  label: "CommBank sites",
                  rightIcon: Icons.navigate_next),
            ],
          ),
        ));
  }
}
