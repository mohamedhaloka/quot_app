import 'package:flutter/material.dart';
import 'package:quot_app/views/search/view.dart';
import 'package:quot_app/views/setting/view.dart';
import 'package:quot_app/widgets_ui/custom_circular_button.dart';
import 'package:quot_app/widgets_ui/custom_sized_box.dart';
import 'package:quot_app/widgets_ui/quot_logo.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          QuotLogo(
            logoSize: 0.072,
            isVisible: false,
            contWidth: 0.3,
            logoColor: Color(0xff33575A),
          ),
          Row(
            children: [
              CustomCircularButton(
                onPress: () {
                  Navigator.pushNamed(context, SearchView.id);
                },
                imgSrc: "assets/img/home/search.png",),
              CustomSizedBox(widNum: 0.03, heiNum: 0.0),
              CustomCircularButton(
                onPress: () {
                  Navigator.pushNamed(context, SettingView.id);
                },
                imgSrc: "assets/img/home/setting.png",),
            ],
          )
        ],
      ),
    );
  }
}