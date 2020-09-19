import 'package:flutter/material.dart';
import 'package:quot_app/const.dart';
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
            logoSize: 0.08,
            isVisible: false,
            contWidth: 0.34,
          ),
          Row(
            children: [
              drawButton(),
              CustomSizedBox(widNum: 0.04, heiNum: 0.0),
              drawButton(),
            ],
          )
        ],
      ),
    );
  }

  Widget drawButton() {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Color(0xffC2CCCC).withOpacity(0.4), shape: BoxShape.circle),
      child: Center(
        child: Icon(
          Icons.search,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
