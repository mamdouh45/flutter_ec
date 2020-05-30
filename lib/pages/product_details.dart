import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* first return Scaffold .. ( appbar)
*second body(..appbar(),ListView..(Container()))
* third
*
*
* */
class ProductDetails extends StatefulWidget {
  /* first to git details from product.dart must be create model var and constructor to git value from product.dar to Product_Details
 * second go to Navigator.of--->ProductDetails()
 * */
  final Product_Details_name;
  final Product_Details_new_price;
  final Product_Details_old_price;
  final Product_Details_picture;

  const ProductDetails(
      {Key key,
      this.Product_Details_name,
      this.Product_Details_new_price,
      this.Product_Details_old_price,
      this.Product_Details_picture})
      : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        //  elevation to shadow for app bar
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('المتجر '),
        // actions to create IconButton and on Pressed
        actions: <Widget>[
          // first  IconButton search
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          //  second IconButton shopping_cart
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300.0,
            // her pass value from product in GridTile..(Container())
            child: GridTile(
              child: Container(
                color: Colors.white70,
                //  to pass Product_Details_picture this is in parent class ProductDetails to Referring pass widget.Product_Details_picture
                child: Image.asset(widget.Product_Details_picture),
              ),
              //... next
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  // leading The primary content of the list tile. to address left side but title = to mid sid

                  /* leading: Text(
                    widget.Product_Details_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),*/
                  title: Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Expanded(
                          child: Text(
                        widget.Product_Details_name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      )),
                      Expanded(
                        child: Text(
                          "قبل" +
                              widget.Product_Details_old_price.toString() +
                              "ج.م",
                          style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                            "بعد.." +
                                widget.Product_Details_new_price.toString() +
                                "ج.م",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          //    ============= the First Buttons ==================
          Row(
            children: [
//    ============= the size Button ==================
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(child: Text("السعر")),
                    Expanded(child: Icon(Icons.arrow_drop_down))
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(child: Text("الكمية")),
                    Expanded(child: Icon(Icons.arrow_drop_down))
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(child: Text("المقاس")),
                    Expanded(child: Icon(Icons.arrow_drop_down))
                  ],
                ),
              ))
            ],
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "اشتر الأن",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  color: Colors.red,
                  textColor: Colors.black,
                  elevation: 0.2,
                ),
              ),
              new IconButton(
                  icon: Icon(Icons.add_shopping_cart, color: Colors.red),
                  onPressed: () {}),
              // new Padding(padding: const EdgeInsets.all(0.2)),
              new IconButton(
                  icon: Icon(Icons.favorite_border, color: Colors.red),
                  onPressed: () {})
            ],
          ),
        ],
      ),
    );
  }
}
