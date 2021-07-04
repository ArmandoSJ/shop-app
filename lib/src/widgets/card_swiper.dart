import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';


class CardSwiper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final vSize = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: 400,
      //color: Colors.blue,
      child: Swiper(
        itemCount:10,
        layout:SwiperLayout.STACK,
        itemWidth: vSize.width,
        itemHeight: vSize.height,
        itemBuilder : ( _ , int index){
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'product-detail'),
            child: ClipRRect(
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: AssetImage('assets/pants1.jpg'),
                fit: BoxFit.cover
              ),
            
            )
          );
        }
      
      
      ),
    );
  }
}