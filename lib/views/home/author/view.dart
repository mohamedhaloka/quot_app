import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:quot_app/const.dart';
import 'package:quot_app/models/authors.dart';
import 'package:quot_app/sevices/store.dart';
import 'package:quot_app/views/home/author/author_card.dart';

class AuthorView extends StatefulWidget {
  @override
  _AuthorViewState createState() => _AuthorViewState();
}

class _AuthorViewState extends State<AuthorView> {
  bool isLoading = true;
  List<Authors> authorsInfo = [];

  getAuthor() async {
    await for (var snapshot in Store().getAuthors()) {
      var data = snapshot.docs;
      for (var doc in data) {
        authorsInfo.add(Authors(
          img: doc.data()[kAuthorImage],
          name: doc.data()[kAuthorName],
        ));
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  @override
  void initState() {
    getAuthor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : AnimationLimiter(
            child: GridView.builder(
              padding: EdgeInsets.only(left: 16, right: 16, top: 4),
              physics: BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: .8,
              ),
              itemBuilder: (context, index) =>
                  AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 575),
                child: SlideAnimation(
                  verticalOffset: 150.0,
                  child: AuthorCard(
                    authors: authorsInfo[index],
                  ),
                ),
              ),
              itemCount: authorsInfo.length,
            ),
          );
  }
}
