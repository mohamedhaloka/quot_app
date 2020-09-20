import 'package:flutter/material.dart';

import '../const.dart';

class OutLineButton extends StatelessWidget {
  OutLineButton(
      {@required this.tittle,
        @required this.onPress,
        @required this.outLineColor});
  String tittle;
  Function onPress;
  Color outLineColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: outLineColor, width: 2)),
      child: RaisedButton(
        onPressed: onPress,
        child: Text(
          tittle,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kScandreyColor,
              fontSize: 30),
        ),
        elevation: 0.0,
        highlightElevation: 0.0,
        color: Colors.transparent,
      ),
    );
  }
}
