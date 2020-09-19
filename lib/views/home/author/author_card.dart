import 'package:flutter/material.dart';
import 'package:quot_app/widgets_ui/custom_sized_box.dart';

class AuthorCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(6),
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
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                "assets/img/home/bookmark.png",
                width: 20,
              ),
            ),
            CustomSizedBox(widNum: 0.0, heiNum: 0.005),
            Expanded(
                child: Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.black54, shape: BoxShape.circle),
                  ),
                  CustomSizedBox(widNum: 0.0, heiNum: 0.02),
                  Text(
                    "- Mohamed Nasr",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Playfair",
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )),
            CustomSizedBox(widNum: 0.0, heiNum: 0.012),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    authorOption("like.png", () => print("like")),
                    CustomSizedBox(widNum: 0.02, heiNum: 0.0),
                    authorOption("dislike.png", () => print("dislike")),
                  ],
                ),
                authorOption("share.png", () => print("share")),
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
        ));
  }
}
