import 'package:flutter/material.dart';
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
            logoSize: 0.075,
            isVisible: false,
            contWidth: 0.3,
            logoColor: Color(0xff33575A),
          ),
          Row(
            children: [
              drawButton("search.png", () => print("search")),
              CustomSizedBox(widNum: 0.04, heiNum: 0.0),
              drawButton("setting.png", () => print("setting")),
            ],
          )
        ],
      ),
    );
  }

  Widget drawButton(imgSrc, onPress) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Color(0xffC2CCCC).withOpacity(0.4), shape: BoxShape.circle),
        child: Center(
          child: Image.asset(
            "assets/img/home/" + imgSrc,
            width: 20,
          ),
        ),
      ),
    );
  }
}
