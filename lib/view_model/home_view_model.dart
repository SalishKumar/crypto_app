import 'package:crypto_currency_app/locator.dart';
import 'package:crypto_currency_app/model/coin.dart';
import 'package:crypto_currency_app/repository/home_repository.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class HomeViewModel extends ChangeNotifier {
  List<Coin> coins = [];

}