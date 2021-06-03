import 'package:fashion_app/src/providers/ui_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;

    return BottomNavigationBar(
      onTap: (int i) => uiProvider.selectedMenuOpt = i,
      currentIndex: currentIndex,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), label: 'Profile'),
        BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 20.0), label: 'Search'),
        BottomNavigationBarItem(
            icon: Icon(Icons.people, size: 20.0), label: 'Friends'),
        BottomNavigationBarItem(
            icon: Icon(Icons.message, size: 20.0), label: 'Messages'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      ],
    );
  }
}
