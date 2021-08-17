import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration authInputDecoration(
      {required String hintText,
      required String labelText,
      Widget? prefix,
      Colors? color}) {
    return InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple, width: 2)),
        hintText: hintText,
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.black),
        prefixIcon: prefix);
  }
}
