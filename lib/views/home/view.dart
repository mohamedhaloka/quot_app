import 'package:flutter/material.dart';
import 'package:quot_app/views/home/app_bar.dart';

class HomeView extends StatelessWidget {
  static String id = "Home View";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar()
        ],
      ),
    );
  }
}
