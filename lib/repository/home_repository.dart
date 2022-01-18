import 'package:crypto_currency_app/model/coin.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeRepository{
    Dio dio = Dio();
    String end_point = "https://api1.binance.com/api/v3/ticker/price";

    Future<List<Coin>> fetchDataFromBinance()async{
      List<Coin> coins = [];
      try{
        Response response =  await dio.get(end_point,
        ).timeout(Duration(seconds: 20));
        for(var i in response.data){
          Coin coin = Coin.fromJson(i);
          coins.add(coin);
        }

      }
      catch(e){
        Fluttertoast.showToast(msg: "Try again later");

      }
      return coins;


    }
}