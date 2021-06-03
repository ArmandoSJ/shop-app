import 'package:fashion_app/src/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:fashion_app/src/widgets/main_view.dart';
import 'package:fashion_app/src/utils/constants.dart' as utils;

class MainActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return MainView(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SoftwareDSJ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white),
            ),
            SizedBox(height: size.height * 0.20),
            SizedBox(height: size.height * 0.05),
            ButtonUI(
                text: "Inicio de sesion",
                background: utils.vPrimaryLightColor,
                textColor: Colors.black,
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, 'login')),
            ButtonUI(
                text: "Registrar",
                background: utils.vPrimaryLightColor,
                textColor: Colors.black,
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, 'signup')),
          ],
        ),
      ),
    );
  }
}
