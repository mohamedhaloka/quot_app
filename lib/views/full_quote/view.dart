import 'package:flutter/material.dart';
import 'package:quot_app/const.dart';
import 'package:quot_app/widgets_ui/custom_sized_box.dart';
import 'package:quot_app/widgets_ui/quot_logo.dart';

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
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[200],
                      offset: Offset(2, 2),
                      blurRadius: 2,
                      spreadRadius: 3)
                ]),
            child: Column(
              children: [
                QuotLogo(
                  logoSize: 0.04,
                  contWidth: 0.15,
                  subTittle: 12,
                ),
                CustomSizedBox(widNum: 0.0, heiNum: 0.03),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: "Playfair",
                      color: kPrimaryColor),
                  textAlign: TextAlign.center,
                ),
                CustomSizedBox(widNum: 0.0, heiNum: 0.03),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "- Mohamed Nasr",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Playfair",
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
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
