import 'package:flutter/material.dart';

class NotificationsApp {
  static GlobalKey<ScaffoldMessengerState> messengerKey =
      new GlobalKey<ScaffoldMessengerState>();

  static showSnackbar(String message, Color color) {
    final snackBar = new SnackBar(
      content:
          Text(message, style: TextStyle(color: Colors.white, fontSize: 16)),
      backgroundColor: color,
    );

    messengerKey.currentState!.showSnackBar(snackBar);
  }
}
