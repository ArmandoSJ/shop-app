import 'package:shop_app/src/activities/loading_page_activity.dart';
import 'package:shop_app/src/utils/responsive_app.dart';
import 'package:shop_app/src/widgets/carousel_slider.dart';
import 'package:shop_app/src/widgets/menu_app.dart';
import 'package:shop_app/src/widgets/nav_bar.dart';
import 'package:shop_app/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProductsActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("TANTE BABY Boutique"), elevation: 0, actions: [
        IconButton(
          icon: Icon(Icons.search_outlined),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {},
        )
      ]),
      body: _Container(),
    );
  }
}


class _Container extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return ResponsiveApp(
        // Let's work on our mobile part
        vMobile: Container(),
        vTablet: Row(
          children: [
            Expanded(
              flex: 6,
              child: Container(),
            ),
            Expanded(
              flex: 9,
              child: Container(),
            ),
          ],
        ),
        vDeskTop: Row(
          children: [
            // Once our width is less then 1300 then it start showing errors
            // Now there is no error if our width is less then 1340
            /* Expanded(
              flex: _size.width > 1340 ? 2 : 4,
              child: MenuApp(),
            ), */
            Expanded(
              flex: _size.width > 1340 ? 2 : 10,
              child: _Catalogs(),
            ),
            /* Expanded(
              flex: _size.width > 1340 ? 8 : 10,
              child: Container(),
            ), */
          ],
        ),
      );
  }
}

class _Catalogs extends StatelessWidget {
  const _Catalogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //NavBarBanner(),
              Navbar(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: LandingPage(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                child: FullscreenSliderDemo(),
              ),

              SingleChildScrollView(
                child: Column(children: [
                  SizedBox(height: 3),
                  CardHorizontal(title: '5-10'),
                  CardHorizontal(title: '10-15'),
                  CardHorizontal(title: '15-20'),
                  CardHorizontal(title: '20-30'),
                ]),
              ),
            ],
          ),
        ),
      );
  }
}