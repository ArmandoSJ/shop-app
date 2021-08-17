import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:js' as js;

class WelcomePageDesk extends StatelessWidget {
  const WelcomePageDesk({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Baby Goods/Kids Goods",
                style: TextStyle(
                    fontWeight: FontWeight.w800, height: 1.3, fontSize: 50),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Nuestro objetivo ofrecerte los mejores productos para bebés y niños",
                style: TextStyle(
                  fontSize: 21,
                  height: 1.7,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                        width: 60,
                        height: 60,
                        child: IconButton(
                          icon: Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.blue,
                            size: 40,
                          ),
                          onPressed: () {
                            js.context.callMethod(
                                "open", ["https://www.facebook.com/"]);
                          },
                        )),
                  ),
                  Expanded(
                    child: Container(
                      width: 60,
                      height: 60,
                      child: GestureDetector(
                        child: Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.lightBlue,
                          size: 40,
                        ),
                        onTap: () {
                          js.context
                              .callMethod("open", ["https://twitter.com"]);
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                        width: 60,
                        height: 60,
                        child: IconButton(
                          icon: Icon(
                            FontAwesomeIcons.instagram,
                            color: Color.fromRGBO(40, 103, 178, 1),
                            size: 40,
                          ),
                          onPressed: () {
                            js.context.callMethod(
                                "open", ["https://www.instagram.com"]);
                          },
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
        Expanded(child: OneDesk()),
      ],
    );
  }
}

class OneDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Image.asset('assets/portada.png'));
  }
}

class WelcomePageTab extends StatelessWidget {
  const WelcomePageTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "Baby Goods/Kids Goods",
                style: TextStyle(
                    fontWeight: FontWeight.w800, height: 1.3, fontSize: 50),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "Nuestro objetivo ofrecerte los mejores productos para bebés y niños",
                style: TextStyle(
                  fontSize: 20,
                  height: 1.7,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.blue,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context
                              .callMethod("open", ["https://www.facebook.com"]);
                        },
                      )),
                ),
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.lightBlue,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context
                              .callMethod("open", ["https://twitter.com"]);
                        },
                      )),
                ),
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.instagram,
                          color: Color.fromRGBO(40, 103, 178, 1),
                          size: 40,
                        ),
                        onPressed: () {
                          js.context.callMethod(
                              "open", ["https://www.instagram.com"]);
                        },
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WelcomePageMob extends StatelessWidget {
  const WelcomePageMob({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "Baby Goods/Kids Goods",
                style: TextStyle(
                    fontWeight: FontWeight.w800, height: 1.3, fontSize: 32),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "Nuestro objetivo ofrecerte los mejores productos para bebés y niños.",
                style: TextStyle(
                  fontSize: 16,
                  height: 1.7,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context
                            .callMethod("open", ["https://www.facebook.com/"]);
                      },
                    )),
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.lightBlue,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod("open", ["https://twitter.com/"]);
                      },
                    )),
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.instagram,
                        color: Color.fromRGBO(40, 103, 178, 1),
                        size: 40,
                      ),
                      onPressed: () {
                        js.context
                            .callMethod("open", ["https://www.instagram.com"]);
                      },
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
