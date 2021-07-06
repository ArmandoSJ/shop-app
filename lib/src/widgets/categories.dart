import 'package:flutter/material.dart';

class Categories extends StatefulWidget {

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
   
  List<String> listCategories = ["Shirt", "Pants", "Shoes"];
  

  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: const EdgeInsets.symmetric(vertical: 2),
      child: SizedBox(
        height: 24,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listCategories.length,
          itemBuilder : ( context , int index) => _CategoriesText(
            vText: listCategories[index],
            vIndex : index
          ),
        ),
      ),
    );
  }
}

class _CategoriesText extends StatefulWidget {

  final vText;
  final vIndex;

  const _CategoriesText({Key? key, this.vText, this.vIndex}) : super(key: key);

  @override
  __CategoriesTextState createState() => __CategoriesTextState();
}

class __CategoriesTextState extends State<_CategoriesText> {
  @override
  Widget build(BuildContext context) {
    
    var selectedIndex = 0;
    print(widget.vIndex);
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        setState(() {
          selectedIndex = widget.vIndex;
          print(selectedIndex == widget.vIndex);
          print(widget.vText);
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
              Text(
                widget.vText,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight : FontWeight.bold,
                  color: selectedIndex == widget.vIndex ?  Colors.purple : Colors.purple.shade100,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top : 6 / 4),
                height: 2,
                width: 30,
                color: selectedIndex == widget.vIndex ?  Colors.black : Colors.transparent,

              )
          ],
        ),
      ),
    );
  }
}