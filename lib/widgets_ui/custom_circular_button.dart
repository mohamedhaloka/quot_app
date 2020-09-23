import 'package:flutter/material.dart';

class CustomCircularButton extends StatelessWidget {
  CustomCircularButton(
      {@required this.onPress, @required this.imgSrc, this.iconSize});
  Function onPress;
  String imgSrc;
  int iconSize;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color(0xffC2CCCC).withOpacity(0.4), shape: BoxShape.circle),
        child: Center(
          child: Image.asset(
            imgSrc,
            width: iconSize == null ? 16 : iconSize,
          ),
        ),
      ),
    );
  }
}
