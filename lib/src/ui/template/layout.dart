import 'package:flutter/material.dart';
import 'package:custom1/src/ui/molecules/svg-stack.dart';

class LayoutCustom extends StatelessWidget {
  final List<Widget> child;
  final int type;
  final bool safeArea;
  final bool onlyStack;
  final Color backgrounColor;

  const LayoutCustom({
    Key key,
    this.child,
    this.type,
    this.safeArea = false,
    this.backgrounColor = const Color(0xFFFFFFFF), this.onlyStack = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      color: backgrounColor,
      width: size.width,
      child: buildLayout(),
    );
  }

  Widget buildLayout() {
    Widget render;
    var component = child;

  

    if(onlyStack){
      render = Stack(children: <Widget>[...component], overflow: Overflow.visible,);
    }else{
    if (type != null) {
      var list;
      switch (type) {
        case 1:
          list = [
            SvgStack(
              name: 'layout1_header',
              alignment: Alignment.topRight,
            ),
            SvgStack(
              name: 'layout1_footer',
              alignment: Alignment.bottomLeft,
            ),
            ...component,
          ];
          break;
        case 2:
          list = [
            Image(
              image: AssetImage('assets/mora.jpg')
            ),
            
            ...component,
          ];
          break;
           case 3:
          list = [
            SvgStack(
              name: 'layout2',
              alignment: Alignment.topCenter,
            ),
            ...component,
          ];
          break;
        default:
      }
      render = Stack(children: <Widget>[...list], overflow: Overflow.visible);
    }

    }

    if (safeArea) {
      render = SafeArea(child: render);
    }

    return render;
  }
}
