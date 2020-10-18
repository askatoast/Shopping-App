import 'package:flutter/material.dart';
import 'package:Grocery/components/products.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'imgs/cats/bread&bakery.png',
            image_caption: 'Bread',
          ),
          Category(
            image_location: 'imgs/cats/cleaning.png',
            image_caption: 'Cleaning',
          ),
          Category(
            image_location: 'imgs/cats/dairy.png',
            image_caption: 'Dairy',
          ),
          Category(
            image_location: 'imgs/cats/fruits&vegetables.png',
            image_caption: 'Fruits&Veggies',
          ),
          Category(
            image_location: 'imgs/cats/health.png',
            image_caption: 'Health',
          ),
          Category(
            image_location: 'imgs/cats/meat&seafood.png',
            image_caption: 'Seafood',
          ),
          Category(
            image_location: 'imgs/cats/snacks.png',
            image_caption: 'Snacks',
          ),
        ],
      ),
    );
  }
}

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
          width: 100,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 100.0,
                height: 80.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_caption,
                  style: new TextStyle(fontSize: 12.0),
                ),
              )),
        ),
      ),
    );
  }
}
