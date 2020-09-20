import 'package:flutter/material.dart';

import '../const.dart';

class FilledButton extends StatelessWidget {
  FilledButton(
      {@required this.tittle,
      @required this.onPress,
      @required this.buttonColor});
  String tittle;
  Function onPress;
  Color buttonColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: RaisedButton(
        onPressed: onPress,
        child: Text(
          tittle,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
        ),
        elevation: 0.0,
        highlightElevation: 0.0,
        color: buttonColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
