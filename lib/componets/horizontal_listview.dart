import 'package:flutter/material.dart';
// we her input in body

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // first make Container
    return Container(
      height:100,
      // child: ListView and make scrollDirection children: new  class Category in  Widget[] List key and value
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/tshirt.png',
            image_caption: 'shirt',
          ),

          Category(
            image_location: 'images/cats/dress.png',
            image_caption: 'dress',
          ),

          Category(
            image_location: 'images/cats/jeans.png',
            image_caption: 'pants',
          ),

          Category(
            image_location: 'images/cats/formal.png',
            image_caption: 'formal',
          ),

          Category(
            image_location: 'images/cats/informal.png',
            image_caption: 'formal',
          ),
        ],
      ),
    );
  }
}
// create Category class 2 var and constructor
class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption, style: new TextStyle(fontSize: 12.0),),
            )
          ),
        ),
      ),
    );
  }
}
