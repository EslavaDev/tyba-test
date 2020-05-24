import 'package:custom1/src/helpers/hex-color.dart';
import 'package:flutter/material.dart';

class CardDiscount extends StatelessWidget {
  final double opacity;
  final double scale;
  CardDiscount({Key key, this.opacity = 1.0, this.scale = 1.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.identity()..scale(scale, 1.0),
        child: Card(
          elevation: 4,
          borderOnForeground: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: HexColor('#EBEEF3'))),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: HexColor('#EBEEF3').withOpacity(0.6),
            ),
            height: 200,
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: buildDiscount(),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> buildDiscount() {
    return [
      Text(
        'A Spring surprise',
        style: TextStyle(
            color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 12),
      ),
      Text(
        '40% OFF',
        style: TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 30),
      ),
      RaisedButton(
        color: Colors.white,
        elevation: 2,
        shape: ContinuousRectangleBorder(
            side: BorderSide(color: HexColor('#3ABE74'))),
        onPressed: () {},
        child: Text(
          'FOODLY SURPRISE',
          style: TextStyle(color: HexColor('#3ABE74'), fontSize: 13),
        ),
      ),
      Text(
        'use the code above for spring collection purchase',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 12),
      ),
    ];
  }
}
