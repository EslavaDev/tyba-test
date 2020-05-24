import 'package:custom1/src/ui/atoms/float-button-navigation.dart';
import 'package:custom1/src/ui/pages/catalog.dart';
import 'package:custom1/src/ui/template/layout.dart';
import 'package:flutter/material.dart';
import 'package:custom1/src/ui/organims/bottom-navigation-bar.dart';
import 'package:custom1/src/helpers/router-path.dart' as routes;

class Home extends StatefulWidget {
  final int pageType;
  Home({Key key, this.pageType = 1}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController controller = PageController();

  @override
  void initState() {
    super.initState();
    // Provider.of<ProductProvider>(context, listen: false)..getProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutCustom(
        safeArea: false,
        type: 1,
        child: [
          PageView(
            children: <Widget>[Catalog(), Text('1'), Text('2'), Text('3')],
            scrollDirection: Axis.horizontal,
            physics: NeverScrollableScrollPhysics(),
            pageSnapping: true,
            controller: controller,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatButtonNavigation(
        icon: Icons.person,
        route: routes.MoreRoute,
        params: {},
      ),
      bottomNavigationBar: BottomNavigationBarCustom(
        controller: controller,
      ),
    );
  }
}
