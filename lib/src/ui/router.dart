import 'package:custom1/src/models/restaurant.dart';
import 'package:custom1/src/ui/pages/home.dart';
import 'package:custom1/src/ui/pages/login.dart';
import 'package:custom1/src/ui/pages/more.dart';
import 'package:custom1/src/ui/pages/restaurant-detail.dart';
import 'package:custom1/src/ui/pages/register.dart';
import 'package:custom1/src/ui/pages/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom1/src/helpers/router-path.dart' as routes;

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routes.Splash:
      return MaterialPageRoute(builder: (context) => Splash());
    case routes.MoreRoute:
      return MaterialPageRoute(builder: (context) => More());
    case routes.LoginRoute:
      return MaterialPageRoute(builder: (context) => Login());
    case routes.RegisterRoute:
      return MaterialPageRoute(builder: (context) => Register());
    case routes.HomeRoute:
//      var userName = settings.arguments as String;
      return MaterialPageRoute(
          builder: (context) => Home());
    case routes.ProductDetailRoute:
     var restaurant = settings.arguments as RestaurantRestaurant;
      return MaterialPageRoute(
          builder: (context) => RestaurantDetail(restaurant: restaurant ,));
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No path for ${settings.name}'),
          ),
        ),
      );
  }
}