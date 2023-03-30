
import 'package:drag_drop_games/pages/game_page.dart';
import 'package:drag_drop_games/pages/home_page.dart';
import 'package:drag_drop_games/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashPage (),
      routes: {
        HomePage.route: (context) => HomePage(),
        GamePage.route: (context) => GamePage(),
        SplashPage.route: (context) => SplashPage(),
      },
    );
  }
}
