import 'package:flutter/material.dart';
import 'package:quot_app/models/quotes.dart';
import 'package:quot_app/widgets_ui/custom_sized_box.dart';
import 'package:quot_app/widgets_ui/quot_logo.dart';

import '../../const.dart';

// ignore: must_be_immutable
class QuoteInfo extends StatelessWidget {
  QuoteInfo({@required this.quotesInfo});
  Quotes quotesInfo;
  @override
  Widget build(BuildContext context) {
    return Container(
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
            contWidth: 0.17,
            subTittle: 12,
          ),
          CustomSizedBox(widNum: 0.0, heiNum: 0.03),
          SelectableText(
            quotesInfo.quotes,
            style: TextStyle(
                fontSize: 22, fontFamily: "Playfair", color: kPrimaryColor),
            textAlign: TextAlign.center,
          ),
          CustomSizedBox(widNum: 0.0, heiNum: 0.03),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "- ${quotesInfo.author}",
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
    );
  }
}
