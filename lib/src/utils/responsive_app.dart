import 'package:flutter/material.dart';


class ResponsiveApp extends StatelessWidget {

  final Widget vMobile;
  final Widget vTablet;
  final Widget vDeskTop;


  const ResponsiveApp({Key? key, required this.vMobile, required this.vTablet, required this.vDeskTop}) 
  : super(key: key);

  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1000 &&
      MediaQuery.of(context).size.width >= 600;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1000;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
          if(constraints.maxWidth >= 1000)
            return vDeskTop;
          else if (constraints.maxHeight >=600)
            return vTablet;
          else 
            return vMobile;    
      }
    );
  }
}