import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quot_app/const.dart';
import 'package:quot_app/models/quotes.dart';
import 'package:quot_app/views/full_quote/view.dart';
import 'package:quot_app/widgets_ui/custom_circular_button.dart';

Future<List<Quotes>> search(String search) async {
  await Future.delayed(Duration(seconds: 2));
  return quotesList;
}

class SearchView extends StatelessWidget {
  static String id = "Search View";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Search".toUpperCase(),style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        leading: Container(
          margin: EdgeInsets.all(8),
          child: CustomCircularButton(onPress: (){
            Navigator.pop(context);
          }, imgSrc: "assets/img/full-quot/left-arrow.png"),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SearchBar<Quotes>(
          onSearch: search,
          hintText: "Type Quot",
          placeHolder:
          Center(child: Image.asset("assets/img/search_page.png")),
          onItemFound: (Quotes quot, int index) {
            return ListTile(
              onTap: () {
                Navigator.pushNamed(context, FullQuoteView.id,
                    arguments: quotesList[index]);
              },
              title: Text("${quot.quotes}"),
              subtitle: Text("${quot.author}"),
            );
          },
        ),
      ),
    );
  }
}
