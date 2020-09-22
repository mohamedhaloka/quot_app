import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:quot_app/const.dart';
import 'package:quot_app/models/quotes.dart';

Future<List<Quotes>> search(String search) async {
  await Future.delayed(Duration(seconds: 2));
  return quotesList;
}

class SearchView extends StatelessWidget {
  static String id = "Search View";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchBar<Quotes>(
        onSearch: search,
        onItemFound: (Quotes quot, int index) {
          return ListTile(
            title: Text(quot.quotes),
            subtitle: Text(quot.author),
          );
        },
      ),
    );
  }
}
