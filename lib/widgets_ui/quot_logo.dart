import 'package:flutter/material.dart';

import '../const.dart';

class QuotLogo extends StatelessWidget {
  QuotLogo(
      {this.isVisible,
      this.contWidth,
      @required this.logoSize,
      this.subTittle,
      this.logoColor});
  bool isVisible;
  double contWidth, logoSize;
  Color logoColor;
  double subTittle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: contWidth == null ? 295 : customHeight(context, contWidth),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: isVisible == null ? true : false,
            child: Text(
              "The",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: subTittle == null ? 26 : subTittle,
                  fontWeight: FontWeight.w300),
            ),
          ),
          Text(
            "QUOTES",
            style: TextStyle(
                fontFamily: "Playfair",
                color: logoColor == null ? Colors.black : logoColor,
                fontSize: customHeight(context, logoSize),
                fontWeight: FontWeight.bold),
          ),
          Visibility(
            visible: isVisible == null ? true : false,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "You Love",
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: subTittle == null ? 26 : subTittle,
                    fontWeight: FontWeight.w300),
                textAlign: TextAlign.end,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
