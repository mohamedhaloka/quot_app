import 'package:flutter/material.dart';
import 'package:quot_app/const.dart';
import 'package:quot_app/views/full_quote/view.dart';
import 'package:quot_app/views/home/view.dart';
import 'package:quot_app/views/sign_in/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quot',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          accentColor: kPrimaryColor),
      routes: {
        SignInView.id: (context) => SignInView(),
        HomeView.id: (context) => HomeView(),
        FullQuoteView.id: (context) => FullQuoteView(),
      },
      initialRoute: HomeView.id,
    );
  }
}
