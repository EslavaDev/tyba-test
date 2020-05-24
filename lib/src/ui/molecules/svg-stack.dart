import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgStack extends StatelessWidget {
  final String name;
  final AlignmentGeometry alignment;
  SvgStack({Key key, this.name, this.alignment = const Alignment(0, 0)}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameRender = name;
    var size = MediaQuery.of(context).size;
    return Align(
      alignment: alignment,
      child: SvgPicture.asset(
  'assets/svg/$nameRender.svg',
  width:  80 * size.width / 100,
  height: 35 * size.height / 100,
  fit: BoxFit.cover,
),
    );
  }
}