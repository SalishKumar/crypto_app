
import 'package:crypto_currency_app/view/home.dart';
import 'package:crypto_currency_app/view_model/home_view_model.dart';
import 'package:crypto_currency_app/view_model/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  static const routeName = '/';

  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginViewModel loginViewModel =
    Provider.of<LoginViewModel>(context, listen: false);
    HomeViewModel homeViewModel =
    Provider.of<HomeViewModel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children:  [
            const Center(child: Text(
                "Crypto App",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            )),
            SizedBox(height: 20,),
            myTextField(controller: loginViewModel.emailCon,hint_text: "Enter a email",),
            SizedBox(height: 20,),
            myTextField(controller: loginViewModel.passCon,hint_text: "Enter a password",obsecureText:true),
            SizedBox(height: 20,),

            Consumer<LoginViewModel>(
              builder: (context,loginViewModel,child) {
                return SizedBox(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(

                      onPressed: ()async{
                    homeViewModel.coins = await loginViewModel.login();
                    if(homeViewModel.coins.isNotEmpty){

                      Navigator.pushReplacementNamed(context, Home.routeName);
                    }

                  }, child: loginViewModel.load?Center(child: CircularProgressIndicator(backgroundColor: Colors.white,),):Text("Login")),
                );
              }
            )

          ],
        ),
      )
    );
  }
}

class myTextField extends StatelessWidget {
   myTextField({
    Key? key,
    required this.controller,
    required this.hint_text,
     this.obsecureText = false,

  }) : super(key: key);

  final TextEditingController controller;
  final String hint_text;
   bool obsecureText = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
obscureText: obsecureText,
      decoration:  InputDecoration(
        hintText: hint_text,
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
        ),


      ),

    );
  }
}