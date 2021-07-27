import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        //width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0.0),
              child:  Image.asset(
                  "assets/portada.png",
                  fit: BoxFit.cover
                ),
            ),
            Text(
              "Baby Goods/Kids Goods",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                "Nuestro objetivo ofrecerte los mejores productos para bebés y niños",
                style: TextStyle(fontSize: 16.0, color: Colors.black),
              ),
            ),
            MaterialButton(
              color: Colors.pink.shade50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: Text(
                  "Ir al catalogo",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ), 
          ],
        ),
      ),
      /* Padding(
        padding: EdgeInsets.symmetric(vertical: 0.0),
        child:  Image.asset(
            "assets/portada.png",
            fit: BoxFit.cover
          //width: width,
          ),
      ) */
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Stack(
            children: pageChildren(constraints.biggest.width ) 
              
            //mainAxisAlignment: MainAxisAlignment.center,
            //children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
