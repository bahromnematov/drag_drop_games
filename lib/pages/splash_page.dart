import 'dart:async';

import 'package:drag_drop_games/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  static const route = "splash_page";

  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
   _initTimer();
  }

  _initTimer() {
    Timer(const Duration(seconds: 3), () {
      _callNextPage();
    });
  }

  void _callNextPage() {
    Navigator.pushReplacementNamed(context, HomePage.route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromRGBO(193, 53, 132, 1),
              Color.fromRGBO(131, 58, 180, 1)
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:  [
            Expanded(
                child: Center(
              child:Lottie.asset("assets/lottie/cat.json")
            )),
            Text(
              "All rights reserved",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
