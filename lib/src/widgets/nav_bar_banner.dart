import 'package:flutter/material.dart';

class NavBarBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: Container(
        color: Colors.pink.shade50,
        child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                    icon:  Icon(Icons.photo),
                    color: Colors.blue,
                    onPressed: () {}),
                IconButton(
                    icon: const Icon(Icons.photo),
                    color: Colors.blue,
                    onPressed: () {}),
                IconButton(
                    icon: const Icon(Icons.brightness_5_rounded),
                    color: Colors.blue,
                    onPressed: () {}),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Contactanos al siguiente numero: 11232112",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
