import 'package:clipboard/clipboard.dart';
import 'package:easy_alert/easy_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:quot_app/db_helper.dart';
import 'package:quot_app/views/full_quote/view.dart';
import 'package:quot_app/widgets_ui/custom_sized_box.dart';

import '../../../const.dart';

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
            return LayoutBuilder(builder: (context, constant) {
              if (snapshot.data.length == 0) {
                return Image.asset("assets/img/home/quot_empty.png");
              }
              return AnimationLimiter(
                child: StaggeredGridView.countBuilder(
                  physics: BouncingScrollPhysics(),
                  crossAxisCount: 4,
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      duration: const Duration(milliseconds: 575),
                      child: SlideAnimation(
                        verticalOffset: 150.0,
                        child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey[200],
                                      offset: Offset(2, 2),
                                      blurRadius: 2,
                                      spreadRadius: 3)
                                ]),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "\''",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: kScandreyColor,
                                          fontSize: 30),
                                    ),
                                  ],
                                ),
                                CustomSizedBox(widNum: 0.0, heiNum: 0.005),
                                Expanded(
                                    child: Center(
                                      child: Text(
                                        "${snapshot.data[index]['quot']}",
                                        maxLines: 5,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontFamily: "Playfair"),
                                      ),
                                    )),
                                CustomSizedBox(widNum: 0.0, heiNum: 0.01),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "- ${snapshot.data[index]['author']}",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontFamily: "Playfair",
                                          fontWeight: FontWeight.bold),
                                    )),
                                CustomSizedBox(widNum: 0.0, heiNum: 0.012),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    quoteOption("delete.png", () async {
                                      await dbHelper.deleteQuote(
                                          snapshot.data[index]['id']);
                                      print(
                                          "quote ${snapshot.data[index]['id']} is deleted ");
                                      setState(() {});
                                    }),
                                    GestureDetector(
                                      onTap: () {
                                        FlutterClipboard.copy(
                                                snapshot.data[index]['quot'])
                                            .then((value) => print('copied'));
                                        Alert.toast(
                                            context, "You just copy quote");
                                      },
                                      child: Container(
                                        width: 36,
                                        height: 18,
                                        decoration: BoxDecoration(
                                            color: kScandreyColor,
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                        child: Center(
                                            child: Text(
                                          "copy".toUpperCase(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: "Titillium"),
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )),
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
            });
          } else if (snapshot.hasData == null) {
            return Text("error");
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }

  Widget quoteOption(imgSrc, onPress) {
    return GestureDetector(
        onTap: onPress,
        child: Image.asset(
          "assets/img/home/" + imgSrc,
          width: 16,
          color: kScandreyColor,
        ));
  }
}
