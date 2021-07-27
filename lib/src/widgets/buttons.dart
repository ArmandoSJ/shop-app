import 'package:flutter/material.dart';
import 'package:shop_app/src/utils/constants.dart' as utils;

class ButtonUI extends StatelessWidget {
  final text;
  //final Function? activity;
  final VoidCallback? onPressed;
  final Color? color, textColor;
  final Color? background;
  const ButtonUI({
    Key? key,
    this.text,
    this.onPressed,
    this.color = utils.vPrimaryColor,
    this.background,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          child: Text(text, style: TextStyle(color: textColor)),
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            primary: color,
            backgroundColor: background,
            textStyle: TextStyle(fontSize: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80.0),
            ),
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
