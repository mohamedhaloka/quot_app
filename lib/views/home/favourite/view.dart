import 'package:flutter/material.dart';

class FavouriteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ExpansionTile(
          title: Text("Quotes"),
          initiallyExpanded: true,
              children: [
                Text("dkkdkdkdkdk")
              ],
        )),
        Expanded(
            child: ExpansionTile(
          title: Text("Author"),
        )),
      ],
    );
  }
}
