import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quot_app/const.dart';
import 'package:quot_app/views/full_quote/view.dart';
import 'package:quot_app/views/home/author/author_quotes/view.dart';
import 'package:quot_app/views/home/view.dart';
import 'package:quot_app/views/setting/about/view.dart';
import 'package:quot_app/views/setting/view.dart';
import 'package:quot_app/views/sign_in/view.dart';
import 'package:easy_alert/easy_alert.dart';
import 'package:quot_app/views/splash/view.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences preferences = await SharedPreferences.getInstance();
  bool seen = preferences.getBool('seen');

  String _screen;

  if (seen == false || seen == null) {
    _screen = SignInView.id;
  } else {
    _screen = SplashView.id;
  }

  await Firebase.initializeApp();
  runApp(AlertProvider(
    child: MyApp(
      screen: _screen,
    ),
    config: AlertConfig(ok: "", cancel: ""),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({this.screen});
  String screen;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quot',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          platform: TargetPlatform.iOS,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: "Titillium",
          accentColor: kPrimaryColor),
      routes: {
        SignInView.id: (context) => SignInView(),
        SplashView.id: (context) => SplashView(),
        HomeView.id: (context) => HomeView(),
        AboutView.id: (context) => AboutView(),
        FullQuoteView.id: (context) => FullQuoteView(),
        SettingView.id: (context) => SettingView(),
        AuthorQuotes.id: (context) => AuthorQuotes(),
      },
      initialRoute: screen,
    );
  }
}
