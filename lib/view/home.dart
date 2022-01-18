import 'package:crypto_currency_app/view/login.dart';
import 'package:crypto_currency_app/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static const routeName = '/home';


  @override
  Widget build(BuildContext context) {
    HomeViewModel homeViewModel =
    Provider.of<HomeViewModel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          GestureDetector(
      onTap: (){
        homeViewModel.coins.clear();
        Navigator.pushReplacementNamed(context, Login.routeName);

    //
    },
      child: Padding(
        padding: const EdgeInsets.only(right: 5),
        child: Icon(Icons.exit_to_app),
      ))
        ],
      ),
      body: ListView.builder(
          itemBuilder: (context,index){
            return ListTile(
              leading: Text((index+1).toString()),
              title: Text(homeViewModel.coins[index].symbol),
              subtitle: Text(homeViewModel.coins[index].price),
            );
          }
      ),
    );
  }
}
