import 'package:shop_app/src/widgets/widgets.dart';
import 'package:flutter/material.dart';



class ProductDetailActivity extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    
    final String product = ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-product';

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              _ProductAndTitle(),
              _OverView(),
              _OverView(),
              _OverView(),
              _OverView(),
              CastingCard(),
            ])
          )
        ],
      )
    );
  }
}

class _CustomAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(bottom: 10),
          child: Text('Product.title', style: TextStyle(fontSize: 16)),
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: AssetImage('assets/coupleCloths.jpg'),
          fit : BoxFit.cover,
        ),
      ),
    );
  }
}


class _ProductAndTitle extends StatelessWidget {
   
  @override
  Widget build(BuildContext context) {
    final TextTheme vTextTheme = Theme.of(context).textTheme;
    return Container(
      margin : EdgeInsets.only( top: 20 ),
      padding : EdgeInsets.symmetric( horizontal : 20 ),
      child : Row( 
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: AssetImage('assets/coupleCloths.jpg'),
              height: 150,
            )
          ),

          SizedBox(width : 20),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('product.title', style: vTextTheme.headline5, overflow: TextOverflow.ellipsis, maxLines: 2,),
              Text('movproductie.originTitle', style: vTextTheme.subtitle1, overflow: TextOverflow.ellipsis),
              
              Row(
                children: [
                  Icon(Icons.star_outlined, size: 18, color: Colors.grey ),
                  SizedBox(width: 5),
                  Text('product.carrito', style: vTextTheme.caption)
                ],
              )
            
            
            
            ],
          )


        ],
      )
    );
  }
}

class _OverView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical : 10),
      child: Text("Occaecat esse sunt qui eu laborum esse. Do dolore sunt nostrud sunt dolor excepteur pariatur sit nisi sint velit laborum occaecat proident. Consectetur amet nulla irure do aliquip ea mollit commodo adipisicing exercitation adipisicing laboris sunt culpa. Minim exercitation id reprehenderit proident consectetur elit excepteur elit tempor sunt reprehenderit nostrud ullamco fugiat. In esse culpa ad eiusmod velit cillum. Sunt id dolor est qui in sunt. Do irure est non ut quis excepteur.",
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.subtitle1
      ),
      
    );
  }
}