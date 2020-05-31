import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  @override
  Widget build(BuildContext context) {
    //================= first ListView.builder
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Text("aaaa");
      },
    );
  }
}
