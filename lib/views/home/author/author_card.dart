import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quot_app/const.dart';
import 'package:quot_app/models/authors.dart';
import 'package:quot_app/views/home/author/author_quotes/view.dart';
import 'package:share/share.dart';

// ignore: must_be_immutable
class AuthorCard extends StatelessWidget {
  AuthorCard({this.authors});

  Authors authors;
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
              onTap: () {
                showDialog(
                    context: context,
                    child: CupertinoAlertDialog(
                      title: Text(
                        "${authors.name}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      content: SingleChildScrollView(
                          child: Text("${authors.description}")),
                      actions: [
                        FlatButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            splashColor: kScandreyColor.withOpacity(0.2),
                            child: Text(
                              "ok".toUpperCase(),
                              style: TextStyle(color: kScandreyColor),
                            ))
                      ],
                    ));
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  "assets/img/setting/information.png",
                  color: kScandreyColor,
                  width: 20,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AuthorQuotes.id,
                    arguments: authors);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: customHeight(context, 0.14),
                    height: customHeight(context, 0.14),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage("${authors.img}"),
                            fit: BoxFit.cover)),
                  ),
                  Text(
                    "${authors.name}",
                    style: TextStyle(
                        fontSize: 14,
                        color: kScandreyColor,
                        fontFamily: "Playfair",
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Align(
              child: authorOption("share.png", () {
                Share.share(
                    "To see all quotes about ${authors.name} download Quot App via the link https://play.google.com/store/apps/details?id=com.quot_app \n${authors.description}");
              }),
              alignment: Alignment.centerRight,
            )
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
