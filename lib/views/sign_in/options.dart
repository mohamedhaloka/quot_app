import 'package:flutter/material.dart';
import 'package:quot_app/const.dart';
import 'package:quot_app/views/home/view.dart';
import 'package:quot_app/widgets_ui/custom_sized_box.dart';

class SignInOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSizedBox(widNum: 0.0, heiNum: 0.02),
        Container(
            width: 190,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: kScandreyColor, width: 2)),
            child: RaisedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomeView()));
              },
              elevation: 0.0,
              child: Text(
                "Go".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              color: Colors.transparent,
              highlightElevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
            ))
      ],
    );
  }
}
