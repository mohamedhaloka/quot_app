import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:quot_app/views/home/author/author_card.dart';

class AuthorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: GridView.builder(
        padding: EdgeInsets.only(left: 16, right: 16, top: 4),
        physics: BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: .8,
        ),
        itemBuilder: (context, index) => AnimationConfiguration.staggeredList(
          position: index,
          duration: const Duration(milliseconds: 575),
          child: SlideAnimation(
            verticalOffset: 150.0,
            child: AuthorCard(),
          ),
        ),
        itemCount: 5,
      ),
    );
  }
}
