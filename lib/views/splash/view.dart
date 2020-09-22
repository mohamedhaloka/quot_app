import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quot_app/views/home/view.dart';
import 'package:quot_app/widgets_ui/quot_logo.dart';

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
      body: Center(
        child: QuotLogo(
          logoSize: 0.09,
          contWidth: 0.38,
        ),
      ),
    );
  }
}
