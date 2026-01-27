import 'package:flutter/material.dart';
import 'package:shoponline/scr/congratulation.dart';
import 'package:shoponline/scr/error_screen.dart';
import 'package:shoponline/scr/password/email_password.dart';
import 'package:shoponline/scr/password/new_password.dart';
import 'package:shoponline/scr/password/password_reset.dart';
import 'package:shoponline/scr/password/success.dart';
import 'package:shoponline/scr/products/product_page.dart';
import 'package:shoponline/scr/sign_in.dart';
import 'package:shoponline/scr/sign_up.dart';
import 'package:shoponline/scr/welcome.dart';
import 'package:shoponline/scr/password/forget_password.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome',
      routes: {
        '/welcome':(context)=>Welcome(),
        '/signIn':(context)=>SignIn(),
        '/signUp':(context)=>SignUp(),
        '/congratulation':(context)=>Congratulation(),
        '/forget': (context)=> ForgetPassword(),
        '/passwordReset':(context)=>PasswordReset(),
        '/emailPassword':(context)=>EmailPassword(),
        '/newPassword':(context)=>NewPassword(),
        '/success':(context)=>Success(),
        '/productPage'  :  (context) => ProductPage(),
      },
      onUnknownRoute: (routeSetting){
        return MaterialPageRoute(builder: (_){
          return ErrorScreen();
        });
      },
    );
  }
}
