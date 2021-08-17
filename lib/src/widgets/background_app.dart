import 'package:flutter/material.dart';

class BackgroundApp extends StatelessWidget {
  final Widget child;
  final bool disabledImage;
  const BackgroundApp(
      {Key? key, required this.child, this.disabledImage = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          _BackGround(),
          _HeaderImage(disabledImage: disabledImage),
          this.child,
        ],
      ),
    );
  }
}

class _HeaderImage extends StatelessWidget {
  final bool disabledImage;
  _HeaderImage({Key? key, this.disabledImage = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Visibility(
        visible: disabledImage,
        child: Container(
          padding: EdgeInsets.only(top: 65.0),
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage("assets/logo_app.jpg"),
                height: 120.0,
              ),
              SizedBox(height: 10.0, width: double.infinity), //centra la imagen
            ],
          ),
        ),
      ),
    );
  }
}

class _BackGround extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: _decoration(),
    );
  }

  BoxDecoration _decoration() => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.30, 0.6),
          colors: <Color>[Color(0xFFFFFFFF), Color(0xFF01579B)],
          tileMode: TileMode.repeated,
        ),
      );
}
