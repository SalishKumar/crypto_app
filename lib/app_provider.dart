import 'package:crypto_currency_app/view_model/home_view_model.dart';
import 'package:crypto_currency_app/view_model/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class AppProvider extends StatelessWidget {
  final Widget child;

  const AppProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginViewModel()),
        ChangeNotifierProvider(create: (context) => HomeViewModel()),


      ],
      child: child,
    );
  }
}