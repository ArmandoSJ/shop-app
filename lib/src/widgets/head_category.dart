import 'package:fashion_app/src/widgets/categories.dart';
import 'package:flutter/material.dart';

class HeaderCategory extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal : 20),
          child: Text("Women",
          style: Theme.of(context).textTheme.headline5!.copyWith( fontWeight: FontWeight.bold)
          ),
        ),
        Categories(),
      ],
    );
  }
}


