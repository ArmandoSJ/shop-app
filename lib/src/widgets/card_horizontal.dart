import 'package:flutter/material.dart';


class CardHorizontal extends StatelessWidget {
  final title;
  
  const CardHorizontal({
    Key? key,
    this.title,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      color: Colors.purple.shade50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(title, style: TextStyle( fontSize: 15, fontWeight:FontWeight.bold ))
          ),
          SizedBox(height: 3),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (_ , int index) => _CardView()
            
            ),
          )


        ],
      )
    );
  }
}

class _CardView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 130,
        height: 190,
        //color: Colors.green,
        margin: EdgeInsets.symmetric(horizontal:10, vertical: 10),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'product-detail'),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                  placeholder: AssetImage('assets/no-image.jpg'),
                  image : AssetImage('assets/shirt1.jpg'),
                  width : 130,
                  height : 190,
                  fit: BoxFit.cover
                ),
              ),
            ),

            SizedBox(height: 3),
            Text(
              'Camisa para dama', style: TextStyle( fontSize: 10, fontWeight:FontWeight.bold ),
              maxLines: 2,
              overflow : TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            )
          ],
        )
    );
  }
}

