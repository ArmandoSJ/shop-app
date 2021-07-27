import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset("assets/logo_app_fondo.png", width: 170, height: 50),
            Text(
              "TANTE BABY BOUTIQUE",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.purple.shade100,
                  fontSize: 20),
            ),
            Row(
              children: <Widget>[
                Text(
                  "Inicio",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Sobre nosotros",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Catalogo",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: Colors.pink.shade50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () {},
                  child: Text(
                    "Iniciar sesión",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Container(
        child: Column(children: <Widget>[
          Text(
            "TANTE BABY Boutique",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Inicio",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Sobre nosotros",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Catalogo",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
