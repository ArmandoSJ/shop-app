import 'package:fashion_app/src/activities/login_activity.dart';
import 'package:fashion_app/src/activities/use_profile_activity.dart';
import 'package:fashion_app/src/providers/ui_provider.dart';
import 'package:fashion_app/src/widgets/custom_navigatorbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeActivity extends StatefulWidget {
  @override
  _HomeActivityState createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtener el selected menu opt
    final uiProvider = Provider.of<UiProvider>(context);
    // Cambiar para mostrar la pagina respectiva
    final currentIndex = uiProvider.selectedMenuOpt;

    switch (currentIndex) {
      case 0:
        return UserProfile();

      case 1:
        return LogInActivity();

      /* case 2:
        return LogInActivity();

      case 3:
        return LogInActivity();  */

      default:
        return LogInActivity();
    }
  }
}
