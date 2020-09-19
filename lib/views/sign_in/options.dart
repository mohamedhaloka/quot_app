import 'package:flutter/material.dart';
import 'package:quot_app/const.dart';
import 'package:quot_app/widgets_ui/custom_sized_box.dart';

class SignInOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Login with",
          style: TextStyle(fontFamily: "Titillium", fontSize: 18),
        ),
        CustomSizedBox(widNum: 0.0, heiNum: 0.02),
        Container(
            width: 190,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                drawSignInOption("assets/img/sign_in/google.png"),
                drawSignInOption("assets/img/sign_in/phone.png"),
              ],
            ))
      ],
    );
  }

  Widget drawSignInOption(imgSrc) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: kPrimaryColor, width: 1)),
      child: Center(
        child: Image.asset(
          imgSrc,
          color: kPrimaryColor,
          width: 20,
          height: 20,
        ),
      ),
    );
  }
}