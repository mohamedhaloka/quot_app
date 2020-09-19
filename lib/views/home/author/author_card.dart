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
          ],
        ));
  }
}
