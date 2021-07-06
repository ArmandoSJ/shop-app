import 'package:flutter/material.dart';

class CastingCard extends StatelessWidget {
  const CastingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      //color: Colors.red,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection : Axis.horizontal,
        itemBuilder : ( _ , int index) => _CastCard(),
        
      ),
    );
  }
}

class _CastCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin : EdgeInsets.symmetric( horizontal: 10),
      width: 110,
      height: 100,
      //color: Colors.green,
      child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: AssetImage('assets/shirt4.jpg'),
                height: 140,
                width: 100,
                fit: BoxFit.cover
              )
            ),
            SizedBox(height: 5),
            Text('shirt', maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center)
          ],
      )
    );
  }
}