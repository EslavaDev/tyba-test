import 'package:custom1/src/states/auth.dart';
import 'package:custom1/src/states/city.dart';
import 'package:custom1/src/states/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:custom1/src/helpers/router-path.dart' as routes;
import 'package:custom1/src/ui/router.dart' as router;
import 'package:provider/provider.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => RestaurantProvider()..getRestaurants(),
          ),
          ChangeNotifierProvider(
            create: (_) => AuthProvider()..loginState(),
          ),
          ChangeNotifierProvider(
            create: (_) => CityProvider(),
          ),
        ],
        child: MaterialApp(
          onGenerateRoute: router.generateRoute,
          initialRoute: routes.Splash,
        ),
      ),
    );
