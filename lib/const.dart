import 'dart:ui';

import 'package:flutter/cupertino.dart';

import 'models/quotes.dart';

const Color kPrimaryColor = Color(0xff276068);
const Color kScandreyColor = Color(0xff33575A);

//Quotes Collection
const String kQuotesCollection = "Quotes Collection";
const String kQuotesDescription = "Quotes Description";

//Author Collection
const String kAuthorCollection = "Author Collection";
const String kAuthorName = "Author Name";
const String kAuthorImage = "Author Image";
const String kAuthorDescription = "Author Description";

customHeight(context, heiNum) {
  return MediaQuery.of(context).size.height * heiNum;
}

customWidth(context, widNum) {
  return MediaQuery.of(context).size.width * widNum;
}

//Quotes List Pass to Search Page And Popular Page
List<Quotes> quotesList = [];
