import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:shop_app/src/utils/responsive_app.dart';
import 'package:shop_app/src/widgets/menu_item.dart';

class MenuApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.only(top: kIsWeb ? 20.0 : 0),
      color: Color(0xFFF2F4FC),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.0), 
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/logo_app.jpg",
                    width: 46,
                  ),
                  Spacer(),
                  // We don't want to show this close button on Desktop mood
                  if (!ResponsiveApp.isDesktop(context)) CloseButton(),
                ],
              ),
              SizedBox(height: 20.0),
                            // Menu Items
              MenuItem(
                onClickListener: () {},
                vTitle: "Inbox",
                iconName: Icons.home,
                isActive: true,
                itemCount: 3,
              ),
              MenuItem(
                onClickListener: () {},
                vTitle: "Sent",
                iconName: Icons.home,
                isActive: false,
              ),
              MenuItem(
                onClickListener: () {},
                vTitle: "Drafts",
                iconName: Icons.home,
                isActive: false,
              ),
              MenuItem(
                onClickListener: () {},
                vTitle: "Deleted",
                iconName: Icons.home,
                isActive: false,
                showBorder: false,
              ),



            ],
          )
        ),
      )
    );
  }
}