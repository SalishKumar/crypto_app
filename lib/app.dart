import 'package:crypto_currency_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:crypto_currency_app/app_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        const AppProvider(
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
          onGenerateRoute: generateRoute,
      ),
        );
  }
}