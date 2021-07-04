import 'package:fashion_app/src/activities/activities.dart';
import 'package:flutter/material.dart';



Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'login': (BuildContext context) => LogInActivity(),
    'signup': (BuildContext context) => SignUpActivity(),
    'home': (BuildContext context) => HomeActivity(),
    'main': (BuildContext context) => WelcomeActivity(),
    'products': ( _ ) => ProductsActivity(),
    'product-detail': ( _ ) => ProductDetailActivity(),
  };
}
