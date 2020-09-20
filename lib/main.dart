import 'package:flutter/material.dart';
import 'package:quot_app/const.dart';
import 'package:quot_app/views/full_quote/view.dart';
import 'package:quot_app/views/home/view.dart';
import 'package:quot_app/views/setting/view.dart';
import 'package:quot_app/views/sign_in/view.dart';
import 'package:easy_alert/easy_alert.dart';

void main() {
  runApp(new AlertProvider(
    child: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quot',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          platform: TargetPlatform.iOS,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: "Titillium",
          accentColor: kPrimaryColor),
      routes: {
        SignInView.id: (context) => SignInView(),
        HomeView.id: (context) => HomeView(),
        FullQuoteView.id: (context) => FullQuoteView(),
        SettingView.id: (context) => SettingView(),
      },
      initialRoute: HomeView.id,
    );
  }
}
