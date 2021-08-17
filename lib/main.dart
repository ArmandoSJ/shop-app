import 'package:flutter/material.dart';

import 'package:shop_app/src/providers/ui_provider.dart';
import 'package:shop_app/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/src/utils/notifications_app.dart';

/*
 * developed by asalazarj
 */
void main() async {
  runApp(MyApp());
}

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UiProvider()),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TANTE BABY Boutique',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English
        const Locale('es', 'ES'), // Spanish
      ],
      scaffoldMessengerKey: NotificationsApp.messengerKey,
      initialRoute: 'products',
      routes: getApplicationRoutes(),
      theme: ThemeData(
          primaryColor: Colors.purple.shade50,
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.blue)),
    );
  }
}
