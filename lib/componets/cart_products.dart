import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* first create class builder list  & define var [ the product list] this is info of product insert cart class
* ( get info cart model )create class to get info final and make constructor
* return class Single_cart_product in ListView.builder(-- itemBuilder function (){}
* return Single_cart_product this is constructor (input final var : index to var Product_on_the_Cart )
* design card widget to view info cart her
*
* */

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Product_on_the_Cart = [
    {
      "name": "بليزر1",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "Color": "red",
      "quantity": 1,
    },
    {
      "name": "تيشيرت احمر",
      "picture": "images/products/dress1.jpeg",
      "price": 50,
      "size": "M",
      "Color": "yellow",
      "quantity": 2,
    },
    {
      "name": "فستان اسود",
      "picture": "images/products/dress2.jpeg",
      "price": 50,
      "size": "M",
      "Color": "red",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    //================= first ListView.builder
    return ListView.builder(
      itemCount: Product_on_the_Cart.length,
      itemBuilder: (context, index) {
        /* her *  return Single_cart_product this is constructor (input final var : index to var Product_on_the_Cart )*/
        return Single_cart_product(
          cart_prod_name: Product_on_the_Cart[index]["name"],
          cart_prod_pricture: Product_on_the_Cart[index]["picture"],
          cart_prod_price: Product_on_the_Cart[index]["price"],
          cart_prod_size: Product_on_the_Cart[index]["size"],
          cart_prod_color: Product_on_the_Cart[index]["color"],
          cart_prod_Qty: Product_on_the_Cart[index]["quantity"],
        );
      },
    );
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_pricture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_Qty;

  Single_cart_product(
      {this.cart_prod_name,
      this.cart_prod_pricture,
      this.cart_prod_price,
      this.cart_prod_size,
      this.cart_prod_color,
      this.cart_prod_Qty});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          cart_prod_name,
          textDirection: TextDirection.rtl,
        ),
        subtitle: Column(
          children: [
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("المقاس"),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(cart_prod_size),
                )
              ],
            ),
            Text("a"),
          ],
        ),
      ),
    );
  }
}
