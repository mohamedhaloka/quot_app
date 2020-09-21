import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:quot_app/const.dart';
import 'package:quot_app/models/quotes.dart';
import 'package:quot_app/sevices/store.dart';
import 'package:quot_app/views/home/popular/popular_card.dart';

class PopularView extends StatefulWidget {
  @override
  _PopularViewState createState() => _PopularViewState();
}

class _PopularViewState extends State<PopularView> {
  bool isLoading = true;

  List<Quotes> quotesList = [];

  getQuotes() async {
    await for (var snapshot in Store().getQuotes()) {
      var data = snapshot.docs;
      for (var doc in data) {
        quotesList.add(Quotes(
            quotes: doc.data()[kQuotesDescription],
            author: doc.data()[kAuthorName]));
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  @override
  void initState() {
    getQuotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : AnimationLimiter(
            child: StaggeredGridView.countBuilder(
              physics: BouncingScrollPhysics(),
              crossAxisCount: 4,
              itemCount: quotesList.length,
              itemBuilder: (BuildContext context, int index) {
                return AnimationConfiguration.staggeredList(
                  position: index,
                  duration: const Duration(milliseconds: 575),
                  child: SlideAnimation(
                    verticalOffset: 150.0,
                    child: PopularCard(
                      quotesInfo: quotesList[index],
                    ),
                  ),
                );
              },
              staggeredTileBuilder: (int index) =>
                  new StaggeredTile.count(2, index.isEven ? 2 : 3),
              padding: EdgeInsets.only(left: 16, right: 16, top: 4),
              mainAxisSpacing: 12.0,
              crossAxisSpacing: 12.0,
            ),
          );
  }
}
