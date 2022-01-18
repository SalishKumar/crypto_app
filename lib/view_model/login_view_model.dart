import 'package:crypto_currency_app/locator.dart';
import 'package:crypto_currency_app/model/coin.dart';
import 'package:crypto_currency_app/repository/home_repository.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class LoginViewModel extends ChangeNotifier {
    TextEditingController emailCon = TextEditingController();
    HomeRepository homeRepository = HomeRepository();
    TextEditingController passCon = TextEditingController();
    bool load = false;
    final HomeRepository _homeRepository =
    locator<HomeRepository>();

    Future<List<Coin>> login()async{

        print("hello1");

        if(emailCon.text.trim().isEmpty || passCon.text.trim().isEmpty){
            Fluttertoast.showToast(msg: "Email and password are required");

            return [];
        }
        else{
            load = true;
            notifyListeners();
           List<Coin> coins =  await homeRepository.fetchDataFromBinance();
            emailCon.clear();
            passCon.clear();
            load = false;
            notifyListeners();
            return coins;

        }

    }

}