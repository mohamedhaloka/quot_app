import 'package:flutter/material.dart';
import 'package:quot_app/const.dart';
import 'package:quot_app/widgets_ui/custom_circular_button.dart';
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
        leading: Container(
            margin: EdgeInsets.all(8),
            child: CustomCircularButton(
                onPress: () {
                  Navigator.pop(context);
                },
                imgSrc: "assets/img/full-quot/left-arrow.png")),
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
                "A QUOT App is a program that contains a huge number of quotations transmitted between people and knowing their real source, such as the name of the person who said it and some information about him. You can also search for the quote you want to know by keyword and you will find the quotes you are looking for, and not only this ! You can even contact us if an error occurs in the application or you want to suggest some modifications or additions .. Soon everyone will be allowed to add quotes .. Be in touch.\n\nQUOT App .. The QUOTES You Love.",
                style: TextStyle(color: kScandreyColor, fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
