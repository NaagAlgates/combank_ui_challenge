import 'package:combank_ui_challenge/view/single_floating_menu.dart';
import 'package:flutter/material.dart';

class FloatingMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    final double itemHeight = size.height / 6;
    final double itemWidth = size.width/2;
    return Container(
      color: Colors.transparent,
      child: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: (itemWidth / itemHeight),
          controller: new ScrollController(keepScrollOffset: false),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            SingleFloatingMenu(icon: Icons.transform, label: "Trasnfer",),
            SingleFloatingMenu(icon: Icons.person_outline, label: "Pay someone",),
            SingleFloatingMenu(icon: Icons.format_bold, label: "BPAY",),
            SingleFloatingMenu(icon: Icons.account_balance_wallet, label: "Accounts",),
            SingleFloatingMenu(icon: Icons.credit_card, label: "Cards",),
            SingleFloatingMenu(icon: Icons.tap_and_play, label: "Tap & Pay",),
          ]
      ),
    );
  }
}
