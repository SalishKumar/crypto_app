import 'package:crypto_currency_app/app.dart';
import 'package:crypto_currency_app/locator.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const MyApp());
}

