import 'package:fashion_app/src/activities/loading_page_activity.dart';
import 'package:fashion_app/src/widgets/carousel_slider.dart';
import 'package:fashion_app/src/widgets/nav_bar.dart';
import 'package:fashion_app/src/widgets/nav_bar_banner.dart';
import 'package:fashion_app/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProductsActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Catalogo de productos"), elevation: 0, actions: [
        IconButton(
          icon: Icon(Icons.search_outlined),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
        )
      ]),
      body: Container(
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
                  //SizedBox(height: 5),
                  //HeaderCategory(),
                  //SizedBox(height: 10),
                  //CardSwiper(),
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
      ),

      /*  body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 5),
          HeaderCategory(),
          SizedBox(height: 10),
          CardSwiper(),
          SizedBox(height: 3),
          CardHorizontal(title: '5-10'),
          CardHorizontal(title: '10-15'),
          CardHorizontal(title: '15-20'),
          CardHorizontal(title: '20-30'),
        ]),
      ), */
    );
  }
}
