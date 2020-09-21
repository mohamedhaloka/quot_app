import 'dart:ui';

import 'package:flutter/cupertino.dart';

const Color kPrimaryColor = Color(0xff276068);
const Color kScandreyColor = Color(0xff33575A);

//Quotes Collection
const String kQuotesCollection = "Quotes Collection";
const String kQuotesDescription = "Quotes Description";

//Author Collection
const String kAuthorCollection = "Author Collection";
const String kAuthorName = "Author Name";
const String kAuthorImage = "Author Image";

customHeight(context, heiNum) {
  return MediaQuery.of(context).size.height * heiNum;
}

customWidth(context, widNum) {
  return MediaQuery.of(context).size.width * widNum;
}
