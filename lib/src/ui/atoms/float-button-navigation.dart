import 'package:flutter/material.dart';

class FloatButtonNavigation extends StatelessWidget {
  final IconData icon;
  final String route;
  final Object params;
  FloatButtonNavigation({Key key, this.icon, this.route, this.params = const {}, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(route, arguments: params);
        },
  foregroundColor: Colors.red,
        child: Icon(
         icon,
          color: Colors.white,
        ),
        backgroundColor: Color(0xFF9AA739),
      );
  }
}