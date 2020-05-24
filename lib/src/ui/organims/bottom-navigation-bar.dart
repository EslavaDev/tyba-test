import 'package:custom1/src/ui/atoms/buton-action-bottom.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarCustom extends StatefulWidget {
  final PageController controller;
  BottomNavigationBarCustom({Key key, this.controller}) : super(key: key);

  @override
  BBottomNavigationBarCustomState createState() =>
      BBottomNavigationBarCustomState();
}

class BBottomNavigationBarCustomState extends State<BottomNavigationBarCustom> {
  final list = [
    {'icon': Icons.home, 'title': 'Home'},
    {'icon': Icons.check_circle_outline, 'title': 'Orders'},
    {'icon': Icons.help_outline, 'title': 'Support'},
    {'icon': Icons.format_list_bulleted, 'title': 'Más'}
  ];
  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).padding;
    return BottomAppBar(
      notchMargin: 8.0,
      shape: CircularNotchedRectangle(),
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: padding.bottom,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ...list.map((e) =>  ButtonActionBottom(
          icon: e['icon'],
          onTap: onTap,
          isSide: list.indexOf(e) == 0 || list.indexOf(e) == list.length -1,
          isLeft: list.indexOf(e) >= 2,
          index: list.indexOf(e),
        )),
          ],
        ),
      ),
    );
  }

  void onTap(int index) {
    widget.controller.animateToPage(index,
        curve: Curves.easeOutQuint, duration: Duration(seconds: 1));
  }
}
