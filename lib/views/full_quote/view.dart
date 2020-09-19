import 'package:flutter/material.dart';
import 'package:quot_app/const.dart';
import 'package:quot_app/widgets_ui/custom_sized_box.dart';
import 'package:quot_app/widgets_ui/quot_logo.dart';

import 'info.dart';

class FullQuoteView extends StatelessWidget {
  static String id = "Full Quote View";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              drawButton("left-arrow.png", () {
                Navigator.pop(context);
              }),
              Text("")
            ],
          ),
          CustomSizedBox(widNum: 0.0, heiNum: 0.04),
          QuoteInfo(),
          CustomSizedBox(widNum: 0.0, heiNum: 0.05),
          Container(
            height: 50,
            child: RaisedButton(
              onPressed: () {},
              child: Text(
                "copy".toUpperCase(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30),
              ),
              elevation: 0.0,
              highlightElevation: 0.0,
              color: kScandreyColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          CustomSizedBox(widNum: 0.0, heiNum: 0.03),
          Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: kScandreyColor, width: 2)),
            child: RaisedButton(
              onPressed: () {},
              child: Text(
                "share".toUpperCase(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kScandreyColor,
                    fontSize: 30),
              ),
              elevation: 0.0,
              highlightElevation: 0.0,
              color: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }

  Widget drawButton(imgSrc, onPress) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color(0xffC2CCCC).withOpacity(0.4), shape: BoxShape.circle),
        child: Center(
          child: Image.asset(
            "assets/img/full-quot/" + imgSrc,
            width: 16,
          ),
        ),
      ),
    );
  }
}
