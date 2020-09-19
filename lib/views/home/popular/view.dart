import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:quot_app/views/home/popular/popular_card.dart';

class PopularView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: StaggeredGridView.countBuilder(
        physics: BouncingScrollPhysics(),
        crossAxisCount: 4,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 575),
            child: SlideAnimation(
              verticalOffset: 150.0,
              child: PopularCard(),
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
