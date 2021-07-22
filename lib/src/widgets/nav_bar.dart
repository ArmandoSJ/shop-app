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
            Image.asset("assets/log.png", width: 170, height: 50),
            Text(
              "RetroPortal Studio",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 30),
            ),
            Row(
              children: <Widget>[
                Text(
                  "Home",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "About Us",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Portfolio",
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
                    "Get Started",
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
            "RetroPortal Studio",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Home",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "About Us",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Portfolio",
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
