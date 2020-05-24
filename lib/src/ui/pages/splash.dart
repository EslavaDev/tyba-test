import 'package:custom1/src/states/auth.dart';
import 'package:custom1/src/ui/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home.dart';

class Splash extends StatelessWidget {
  const Splash({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (_, snapshot, __) {
        if (snapshot.isLoggedIn) {
          return Home();
        } else {
          return Login();
        }
      },
    );
  }
}
