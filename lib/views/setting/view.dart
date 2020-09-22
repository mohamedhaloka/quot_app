import 'package:flutter/material.dart';
import 'package:quot_app/const.dart';
import 'package:quot_app/views/setting/Notification.dart';
import 'package:quot_app/views/setting/about/view.dart';
import 'package:quot_app/views/sign_in/view.dart';
import 'package:quot_app/widgets_ui/custom_sized_box.dart';
import 'package:quot_app/widgets_ui/quot_logo.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingView extends StatefulWidget {
  static String id = "Setting View";

  @override
  _SettingViewState createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  bool value = false;
  SharedPreferences preferences;

  storeNotificationVal(bool val) async {
    preferences = await SharedPreferences.getInstance();
    preferences.setBool("notificationVal", val);
  }

  getNotificationVal() async {
    preferences = await SharedPreferences.getInstance();
    setState(() {
      value = preferences.getBool("notificationVal") ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    getNotificationVal();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 30, left: 16, right: 16, bottom: 12),
        child: ListView(
          padding: EdgeInsets.all(0),
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
            settingOptions(() {
              DailyNotifications().pushNotifications();
            }, "Notification", "notification.png"),
            CustomSizedBox(widNum: 0.0, heiNum: 0.04),
            settingOptions(() {
              Navigator.pushNamed(context, AboutView.id);
            }, "About Quot", "about.png"),
            CustomSizedBox(widNum: 0.0, heiNum: 0.04),
            settingOptions(() {
              _launchURL("market://details?id=com.quot_app");
            }, "Rate Application", "rate.png"),
            CustomSizedBox(widNum: 0.0, heiNum: 0.04),
            settingOptions(() {
              Share.share(
                  "Download Quot App via link: https://play.google.com/store/apps/details?id=com.quot_app");
            }, "Share Application", "share.png"),
            CustomSizedBox(widNum: 0.0, heiNum: 0.04),
            settingOptions(() {
              _sendEmail("mailto:mnhaloka@gmail.com");
            }, "Contact US", "contact.png"),
            CustomSizedBox(widNum: 0.0, heiNum: 0.04),
            settingOptions(() async {
              SharedPreferences preferences =
                  await SharedPreferences.getInstance();
              preferences.setBool('seen', false);
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => SignInView()));
            }, "Sign Out", "logout.png"),
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
        onPressed: tittle == "Notification" ? null : onPress,
        disabledColor: Colors.transparent,
        elevation: 0.0,
        highlightElevation: 0.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/img/setting/" + imgSrc,
                  width: 17,
                  color: kScandreyColor,
                ),
                CustomSizedBox(widNum: 0.04, heiNum: 0.0),
                Text(
                  tittle,
                  style: TextStyle(
                      color: kScandreyColor, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            tittle == "Notification"
                ? Switch(
                    value: value,
                    onChanged: (val) {
                      setState(() {
                        value = val;
                      });
                      storeNotificationVal(val);
                    })
                : Container(),
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

  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _sendEmail(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
