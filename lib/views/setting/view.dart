import 'package:flutter/material.dart';
import 'package:quot_app/const.dart';
import 'package:quot_app/widgets_ui/custom_sized_box.dart';
import 'package:quot_app/widgets_ui/quot_logo.dart';

class SettingView extends StatelessWidget {
  static String id = "Setting View";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 30, left: 16, right: 16, bottom: 12),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                drawButton("left-arrow.png", () {
                  Navigator.pop(context);
                }),
                Text("")
              ],
            ),
            CustomSizedBox(widNum: 0.0, heiNum: 0.04),
            Text(
              "setting".toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: kScandreyColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: "Titillium"),
            ),
            CustomSizedBox(widNum: 0.0, heiNum: 0.04),
            settingOptions(() {}, "Notification", "notification.png"),
            CustomSizedBox(widNum: 0.0, heiNum: 0.04),
            settingOptions(() {}, "About US", "information.png"),
            CustomSizedBox(widNum: 0.0, heiNum: 0.04),
            settingOptions(() {}, "About Quot", "about.png"),
            CustomSizedBox(widNum: 0.0, heiNum: 0.04),
            settingOptions(() {}, "Rate US", "rate.png"),
            CustomSizedBox(widNum: 0.0, heiNum: 0.04),
            settingOptions(() {}, "Share Application", "share.png"),
            CustomSizedBox(widNum: 0.0, heiNum: 0.1),
            Center(
              child: QuotLogo(
                logoSize: 0.08,
                contWidth: 0.34,
                subTittle: 16,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget settingOptions(onPress, tittle, imgSrc) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: kScandreyColor),
          borderRadius: BorderRadius.circular(18)),
      child: RaisedButton(
        onPressed: onPress,
        elevation: 0.0,
        highlightElevation: 0.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/img/setting/" + imgSrc,
              width: 17,
              color: kScandreyColor,
            ),
            CustomSizedBox(widNum: 0.02, heiNum: 0.0),
            Text(
              tittle,
              style:
                  TextStyle(color: kScandreyColor, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        color: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      ),
    );
  }

  Widget drawButton(imgSrc, onPress) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color(0xffC2CCCC).withOpacity(0.4), shape: BoxShape.circle),
        child: Center(
          child: Image.asset(
            "assets/img/full-quot/" + imgSrc,
            width: 16,
          ),
        ),
      ),
    );
  }
}
