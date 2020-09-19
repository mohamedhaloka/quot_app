import 'package:flutter/material.dart';

import '../const.dart';

class QuotLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 262,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "The",
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: 26,
                fontWeight: FontWeight.w300),
          ),
          Text(
            "QUOTES",
            style: TextStyle(
                fontFamily: "Playfair",
                fontSize: 70,
                fontWeight: FontWeight.bold),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "You Love",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 26,
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
