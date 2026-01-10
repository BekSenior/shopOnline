import 'package:flutter/material.dart';
import 'package:shoponline/scr/card_screen.dart';
import 'package:shoponline/scr/detail_screen.dart';
import 'package:shoponline/scr/error_screen.dart';
import 'package:shoponline/scr/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home'  :  (context) => HomeScreen(),
        '/detail':  (context) => DetailScreen(),
        '/card'  :  (context) => CardScreen(),
      },
      onUnknownRoute: (routeSetting){
        return MaterialPageRoute(builder: (_){
          return ErrorScreen();
        });
      },
    );
  }
}
