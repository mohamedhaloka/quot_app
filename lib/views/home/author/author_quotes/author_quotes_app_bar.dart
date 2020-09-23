import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quot_app/widgets_ui/custom_circular_button.dart';
import 'package:quot_app/widgets_ui/quot_logo.dart';

authorQuotesAppBar(context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    leading: Container(
      margin: EdgeInsets.all(8),
      child: CustomCircularButton(
          onPress: () {
            Navigator.pop(context);
          },
          imgSrc: "assets/img/full-quot/left-arrow.png"),
    ),
    centerTitle: false,
    title: QuotLogo(
      logoSize: 0.06,
      contWidth: 0.4,
      isVisible: false,
    ),
  );
}
