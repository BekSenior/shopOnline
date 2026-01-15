import 'package:flutter/material.dart';
import 'package:shoponline/scr/error_screen.dart';
import 'package:shoponline/scr/product_page.dart';
import 'package:shoponline/scr/welcome.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome',
      routes: {
        '/welcome':(context)=>Welcome(),
        '/home'  :  (context) => ProductPage(),

      },
      onUnknownRoute: (routeSetting){
        return MaterialPageRoute(builder: (_){
          return ErrorScreen();
        });
      },
    );
  }
}
