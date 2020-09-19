import 'package:flutter/material.dart';
import 'package:quot_app/widgets_ui/custom_sized_box.dart';

import '../../const.dart';

class PopularCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\"",
                  style: TextStyle(fontSize: 30),
                ),
                Image.asset(
                  "assets/img/home/bookmark.png",
                  width: 20,
                )
              ],
            ),
            CustomSizedBox(widNum: 0.0, heiNum: 0.005),
            Expanded(
                child: Center(
              child: Text(
                "kkdkdkdkkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkkdkdkdkdkdkdkdododldkdidokdjddkdkodkddkdkkdkdkdkkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkkdkdkdkdkdkdkdododldkdidokdjddkdkodkddkd",
                style: TextStyle(fontFamily: "Playfair"),
              ),
            )),
            CustomSizedBox(widNum: 0.0, heiNum: 0.01),
            Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "- Mohamed Nasr",
                  style: TextStyle(
                      fontSize: 10,
                      fontFamily: "Playfair",
                      fontWeight: FontWeight.bold),
                )),
            CustomSizedBox(widNum: 0.0, heiNum: 0.012),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    quoteOption("like.png", () => print("like")),
                    CustomSizedBox(widNum: 0.02, heiNum: 0.0),
                    quoteOption("dislike.png", () => print("dislike")),
                    CustomSizedBox(widNum: 0.02, heiNum: 0.0),
                    quoteOption("share.png", () => print("share")),
                  ],
                ),
                GestureDetector(
                  onTap: () => print("copy"),
                  child: Container(
                    width: 36,
                    height: 18,
                    decoration: BoxDecoration(
                        color: kScandreyColor,
                        borderRadius: BorderRadius.circular(6)),
                    child: Center(
                        child: Text(
                      "copy".toUpperCase(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: "Titillium"),
                    )),
                  ),
                )
              ],
            )
          ],
        ));
  }

  Widget quoteOption(imgSrc, onPress) {
    return GestureDetector(
        onTap: onPress,
        child: Image.asset(
          "assets/img/home/" + imgSrc,
          width: 20,
        ));
  }
}
