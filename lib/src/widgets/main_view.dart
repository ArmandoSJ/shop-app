import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  final Widget child;
  const MainView({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/model_portada.jpg"),
                      fit: BoxFit.fill)),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
