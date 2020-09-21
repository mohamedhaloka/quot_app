import 'package:flutter/material.dart';
import 'package:quot_app/const.dart';
import 'package:quot_app/widgets_ui/custom_sized_box.dart';
import 'package:quot_app/widgets_ui/quot_logo.dart';

class AboutView extends StatelessWidget {
  static String id = "About View";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color(0xffC2CCCC).withOpacity(0.4),
                shape: BoxShape.circle),
            child: Center(
              child: Image.asset(
                "assets/img/full-quot/left-arrow.png",
                width: 16,
              ),
            ),
          ),
        ),
        centerTitle: false,
        title: Text(
          "About Quot".toUpperCase(),
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              QuotLogo(
                logoSize: 0.05,
                contWidth: 0.22,
                subTittle: 16,
              ),
              CustomSizedBox(widNum: 0.0, heiNum: 0.03),
              Text(
                "About Quot Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: TextStyle(color: kScandreyColor, fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
