import 'package:fashion_app/src/activities/signup_activity.dart';
import 'package:flutter/material.dart';
import 'package:fashion_app/src/activities/home_activity.dart';
import 'package:fashion_app/src/activities/login_activity.dart';
import 'package:fashion_app/src/activities/welcome_activity.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'login': (BuildContext context) => LogInActivity(),
    'signup': (BuildContext context) => SignUpActivity(),
    'home': (BuildContext context) => HomeActivity(),
    'main': (BuildContext context) => WelcomeActivity(),
  };
}
