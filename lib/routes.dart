import 'dart:convert';
import 'package:crypto_currency_app/view/home.dart';
import 'package:crypto_currency_app/view/login.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Login.routeName:
      return MaterialPageRoute(builder: (_) => const Login());
    case Home.routeName:
      return MaterialPageRoute(builder: (_) => const Home());


    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ));
  }
}