import 'package:flutter/material.dart';
import 'package:quot_app/const.dart';

class CustomSizedBox extends StatelessWidget {
  CustomSizedBox({@required this.widNum, @required this.heiNum});
  double widNum;
  double heiNum;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: customWidth(context, widNum),
      height: customHeight(context, heiNum),
    );
  }
}
