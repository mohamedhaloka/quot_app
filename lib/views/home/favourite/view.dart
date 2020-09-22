import 'package:flutter/material.dart';
import 'package:quot_app/db_helper.dart';

class FavouriteView extends StatefulWidget {
  @override
  _FavouriteViewState createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {
  DbHelper dbHelper;

  @override
  void initState() {
    super.initState();
    dbHelper = DbHelper();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: dbHelper.allQuotes(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                  Text("${snapshot.data[index]['quot']}}"),
                  Text("${snapshot.data[index]['author']}}"),
                    ],
                  );
                });
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
