import 'package:clipboard/clipboard.dart';
import 'package:easy_alert/easy_alert.dart';
import 'package:flutter/material.dart';
import 'package:quot_app/const.dart';
import 'package:quot_app/models/quotes.dart';
import 'package:quot_app/widgets_ui/custom_filled_button.dart';
import 'package:quot_app/widgets_ui/custom_outline_button.dart';
import 'package:quot_app/widgets_ui/custom_sized_box.dart';
import 'package:share/share.dart';

import 'info.dart';

class FullQuoteView extends StatelessWidget {
  static String id = "Full Quote View";
  @override
  Widget build(BuildContext context) {
    Quotes quotes = ModalRoute.of(context).settings.arguments;
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
          QuoteInfo(
            quotesInfo: quotes,
          ),
          CustomSizedBox(widNum: 0.0, heiNum: 0.05),
          FilledButton(
              tittle: "copy".toUpperCase(),
              onPress: () {
                FlutterClipboard.copy("${quotes.quotes}").then((value) => print('copied'));
                Alert.toast(context, "You just copy quote");
              },
              buttonColor: kScandreyColor),
          CustomSizedBox(widNum: 0.0, heiNum: 0.03),
          OutLineButton(
              tittle: "share".toUpperCase(),
              onPress: () {
                Share.share(
                    "${quotes.quotes}");
              },
              outLineColor: kScandreyColor)
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
