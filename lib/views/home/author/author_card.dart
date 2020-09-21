import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quot_app/const.dart';
import 'package:quot_app/widgets_ui/custom_sized_box.dart';
import 'package:share/share.dart';

class AuthorCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10, bottom: 10),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => print("bookmark"),
              child: Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  "assets/img/home/bookmark.png",
                  color: kScandreyColor,
                  width: 20,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  width: customHeight(context, 0.14),
                  height: customHeight(context, 0.14),
                  decoration: BoxDecoration(
                      color: Colors.black54, shape: BoxShape.circle),
                ),
                Text(
                  "Mohamed Nasr",
                  style: TextStyle(
                      fontSize: 16,
                      color: kScandreyColor,
                      fontFamily: "Playfair",
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                authorOption("like.png", () => print("like")),
                authorOption("share.png", () {
                  Share.share("Quote");
                }),
              ],
            ),
          ],
        ));
  }

  Widget authorOption(imgSrc, onPress) {
    return GestureDetector(
        onTap: onPress,
        child: Image.asset(
          "assets/img/home/" + imgSrc,
          width: 16,
          color: kScandreyColor,
        ));
  }
}
