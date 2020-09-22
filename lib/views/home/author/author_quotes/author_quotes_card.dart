import 'package:clipboard/clipboard.dart';
import 'package:easy_alert/easy_alert.dart';
import 'package:flutter/material.dart';
import 'package:quot_app/models/quot.dart';
import 'package:quot_app/models/quotes.dart';
import 'package:quot_app/views/full_quote/view.dart';
import 'package:quot_app/views/home/author/author_quotes/view.dart';
import 'package:quot_app/widgets_ui/custom_sized_box.dart';
import 'package:share/share.dart';

import '../../../../const.dart';

class AuthorQuotesCard extends StatelessWidget {
  AuthorQuotesCard({this.quotes});

  Quotes quotes;
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\''",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kScandreyColor,
                      fontSize: 30),
                ),
              ],
            ),
            CustomSizedBox(widNum: 0.0, heiNum: 0.005),
            Expanded(
                child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, FullQuoteView.id,
                    arguments: quotes);
              },
              child: Center(
                child: Text(
                  "${quotes.quotes}",
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontFamily: "Playfair"),
                ),
              ),
            )),
            CustomSizedBox(widNum: 0.0, heiNum: 0.01),
            Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "- ${quotes.author}",
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
                    quoteOption("like.png", () async {
                      // var quots = Quot({'quot': quot});
                      // int id = await dbHelper.createQuote(quots);
                      // print("quote id is $id");
                      // Scaffold.of(context).showSnackBar(
                      //     SnackBar(content: Text("Quot Add Successfuly")));
                    }),
                    CustomSizedBox(widNum: 0.02, heiNum: 0.0),
                    quoteOption("share.png", () {
                      Share.share('${quotes.quotes}');
                    }),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    FlutterClipboard.copy(quotes.quotes)
                        .then((value) => print('copied'));
                    Alert.toast(context, "You just copy quote");
                  },
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
                ),
              ],
            ),
          ],
        ));
  }

  Widget quoteOption(imgSrc, onPress) {
    return GestureDetector(
        onTap: onPress,
        child: Image.asset(
          "assets/img/home/" + imgSrc,
          width: 16,
          color: kScandreyColor,
        ));
  }
}