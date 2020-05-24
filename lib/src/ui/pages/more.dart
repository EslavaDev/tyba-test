import 'package:custom1/src/helpers/hex-color.dart';
import 'package:custom1/src/helpers/router-path.dart';
import 'package:custom1/src/states/auth.dart';
import 'package:custom1/src/ui/molecules/app-bar.dart';
import 'package:custom1/src/ui/template/layout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class More extends StatelessWidget {
  const More({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AuthProvider>(context, listen: false);

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.red,
      appBar: AppBarCustom(),
      body: LayoutCustom(
        safeArea: false,
        type: 1,
        // appBar: true,
        child: [
          Center(
            child: RaisedButton(
              color: Colors.white,
              elevation: 2,
              shape: ContinuousRectangleBorder(
                  side: BorderSide(color: HexColor('#3ABE74'))),
              onPressed: () {
                provider.logout();
                Navigator.of(context).pop();
              },
              child: Text(
                'Cerrar Sesión',
                style: TextStyle(color: HexColor('#3ABE74'), fontSize: 13),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
