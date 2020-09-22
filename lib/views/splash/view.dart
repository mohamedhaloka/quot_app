import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quot_app/views/home/view.dart';

class SplashView extends StatefulWidget {
  static String id = "Splash View";
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeView()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/logo.png',
              width: 170,
            ),
            Text(
              "QUOTES",
              style: TextStyle(
                  fontFamily: "Playfair",
                  color: Colors.black,
                  fontSize: 70,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
