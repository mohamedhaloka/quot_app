import 'package:flutter/material.dart';
import 'package:quot_app/views/sign_in/options.dart';
import 'package:quot_app/widgets_ui/custom_sized_box.dart';
import 'package:quot_app/widgets_ui/quot_logo.dart';

class SignInView extends StatelessWidget {
  static String id = "Sign In View";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QuotLogo(logoSize: 0.09,contWidth: 0.38,),
            CustomSizedBox(widNum: 0.0, heiNum: 0.26),
            SignInOptions()
          ],
        ),
      ),
    );
  }
}
