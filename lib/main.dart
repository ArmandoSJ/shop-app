import 'package:flutter/material.dart';

import 'package:fashion_app/src/providers/ui_provider.dart';
import 'package:fashion_app/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

/*
 * developed by asalazarj
 */
void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UiProvider()),
      ],
      child: MaterialApp(
        title: 'fashion_app',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', 'US'), // English
          const Locale('es', 'ES'), // Spanish
        ],
        initialRoute: 'products',
        routes: getApplicationRoutes(),
        theme: ThemeData(
            primaryColor: Colors.purple.shade50,
            floatingActionButtonTheme:
                FloatingActionButtonThemeData(backgroundColor: Colors.blue)),
      ),
    );
  }
}
