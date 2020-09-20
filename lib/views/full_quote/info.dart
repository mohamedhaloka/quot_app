import 'package:flutter/material.dart';
import 'package:quot_app/widgets_ui/custom_sized_box.dart';
import 'package:quot_app/widgets_ui/quot_logo.dart';

import '../../const.dart';

class QuoteInfo extends StatelessWidget {
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
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            style: TextStyle(
                fontSize: 22, fontFamily: "Playfair", color: kPrimaryColor),
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
    );
  }
}
