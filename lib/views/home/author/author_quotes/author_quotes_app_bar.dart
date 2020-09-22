import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quot_app/widgets_ui/quot_logo.dart';

authorQuotesAppBar(context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color(0xffC2CCCC).withOpacity(0.4), shape: BoxShape.circle),
        child: Center(
          child: Image.asset(
            "assets/img/full-quot/left-arrow.png",
            width: 16,
          ),
        ),
      ),
    ),
    centerTitle: false,
    title: QuotLogo(
      logoSize: 0.06,
      contWidth: 0.4,
      isVisible: false,
    ),
  );
}

Widget drawButton(imgSrc, onPress) {
  return GestureDetector(
    onTap: onPress,
    child: Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Color(0xffC2CCCC).withOpacity(0.4), shape: BoxShape.circle),
      child: Center(
        child: Image.asset(
          "assets/img/setting/" + imgSrc,
          width: 20,
        ),
      ),
    ),
  );
}
