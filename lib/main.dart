import 'package:flutter/material.dart';
import 'package:quot_app/views/sign_in/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quot',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        SignInView.id: (context) => SignInView(),
      },
      initialRoute: SignInView.id,
    );
  }
}
