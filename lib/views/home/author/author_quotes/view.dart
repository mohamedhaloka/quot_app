import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:quot_app/const.dart';
import 'package:quot_app/models/authors.dart';
import 'package:quot_app/models/quotes.dart';
import 'package:quot_app/sevices/store.dart';
import 'package:quot_app/views/home/author/author_quotes/author_quotes_app_bar.dart';
import 'author_quotes_card.dart';

class AuthorQuotes extends StatefulWidget {
  static String id = "Author Quotes";
  @override
  _AuthorQuotesState createState() => _AuthorQuotesState();
}

class _AuthorQuotesState extends State<AuthorQuotes> {
  bool isLoading = true;
  List<Quotes> quotInfo = [];
  Authors authorQuotes;

  getAuthorQuotes() async {
    await for (var snapshot in Store().getQuotes()) {
      var data = snapshot.docs;
      for (var doc in data) {
        print(doc.data()[kAuthorName]);
        print(authorQuotes.name);
        if (doc.data()[kAuthorName] == authorQuotes.name) {
          quotInfo.add(Quotes(
              author: doc.data()[kAuthorName],
              quotes: doc.data()[kQuotesDescription]));
        }
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAuthorQuotes();
  }

  @override
  Widget build(BuildContext context) {
    authorQuotes = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: authorQuotesAppBar(context),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : AnimationLimiter(
              child: StaggeredGridView.countBuilder(
                physics: BouncingScrollPhysics(),
                crossAxisCount: 4,
                itemCount: quotInfo.length,
                itemBuilder: (BuildContext context, int index) {
                  return AnimationConfiguration.staggeredList(
                    position: index,
                    duration: const Duration(milliseconds: 575),
                    child: SlideAnimation(
                      verticalOffset: 150.0,
                      child: AuthorQuotesCard(
                        quotes: quotInfo[index],
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
            ),
    );
  }
}
