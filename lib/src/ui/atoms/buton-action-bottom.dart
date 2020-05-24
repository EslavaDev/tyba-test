import 'package:flutter/material.dart';

class ButtonActionBottom extends StatelessWidget {
  final Function onTap;
  final int index;
  final bool isLeft;
  final bool isSide;
  final IconData icon;

  ButtonActionBottom({
    Key key,
    this.onTap,
    this.icon,
    this.index,
    this.isSide = false,
    this.isLeft = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = isSide ? 31.0 : 55.0;
    return Container(
      width: 55,
      margin:
          isLeft ? EdgeInsets.only(left: size) : EdgeInsets.only(right: size),
      child: IconButton(
        alignment: Alignment.center,
        onPressed: () => onTap(index),
        icon: Icon(icon, color: Colors.black45),
      ),
    );
  }
}
