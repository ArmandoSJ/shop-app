

import 'package:fashion_app/src/widgets/widgets.dart';
import 'package:flutter/material.dart';



class ProductsActivity extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalogo de productos"),
        elevation: 0,
        actions: [
            IconButton(
              icon: Icon(Icons.search_outlined),
              onPressed: () {},
           ),
           IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
           )
        ]
      ),
      body: SingleChildScrollView(
        child: Column(
            children:[
              SizedBox(height: 5),
              HeaderCategory(),
              SizedBox(height: 10),
              CardSwiper(),
              SizedBox(height: 3),
              CardHorizontal(title: '5-10'),
              CardHorizontal(title:'10-15'),
              CardHorizontal(title:'15-20'),
              CardHorizontal(title:'20-30'),
            ]
          ),
      ),
    );
  }
}