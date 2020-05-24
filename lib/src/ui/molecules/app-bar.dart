import 'package:flutter/material.dart';

class AppBarCustom extends StatefulWidget implements PreferredSizeWidget {
  final String title;
   @override
    final Size preferredSize;
  const AppBarCustom({Key key, this.title = '', this.preferredSize = const Size.fromHeight(56.0),}):  super(key: key);


  @override
  _AppBarCustomState createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.grey, size: 30,),
              onPressed: () {
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).backButtonTooltip,
            );
          },
        ),
        elevation: 0,
        title: Text(widget.title),
      );
  }
}
