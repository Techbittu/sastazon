import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cart_products extends StatefulWidget {
  @override
  _cart_productsState createState() => _cart_productsState();
}

class _cart_productsState extends State<cart_products> {
  var Product_On_The_Cart = [
    {
      "name": "Netflix",
      "picture": "images/products/netflix1.jpg",
      "price": 90,
      "month": 1,
      "screen": 4,
      "quantity": 1,
    },
    {
      "name": "AltBalaji",
      "picture": "images/products/alt1.jpg",
      "price": 50,
      "month": 1,
      "screen": 1,
      "quantity": 1,
    },
    {
      "name": "Amazon Prime",
      "picture": "images/products/amazon1.jpg",
      "price": 40,
      "month": 1,
      "screen": 0,
      "quantity": 1,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Product_On_The_Cart.length,
        itemBuilder: (context, index) {
          return Single_Cart_Product(
            cart_product_name: Product_On_The_Cart[index]['name'],
            cart_product_month: Product_On_The_Cart[index]['month'],
            cart_product_picture: Product_On_The_Cart[index]['picture'],
            cart_product_price: Product_On_The_Cart[index]['price'],
            cart_product_quantity: Product_On_The_Cart[index]['quantity'],
            cart_product_screen: Product_On_The_Cart[index]['screen'],
          );
        });
  }
}

class Single_Cart_Product extends StatelessWidget {
  final cart_product_name;
  final cart_product_picture;
  final cart_product_month;
  final cart_product_price;
  final cart_product_screen;
  final cart_product_quantity;

  Single_Cart_Product(
      {this.cart_product_name,
      this.cart_product_month,
      this.cart_product_picture,
      this.cart_product_price,
      this.cart_product_quantity,
      this.cart_product_screen});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Image.asset(
        cart_product_picture,
        width: 80,
      ),
      title: Text(cart_product_name),
      subtitle: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text("Month: "),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "$cart_product_month",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 15.0, 8.0, 8.0),
                child: Text("Screens: "),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "$cart_product_screen",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 8.0),
          child: Container(
            alignment: Alignment.topLeft,
            child: Text(
              "₹ $cart_product_price",
              style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0),
            ),
          ),
          )
        ],
      ),
      trailing: Column(
        children: <Widget>[
          Expanded(flex: 4, child: IconButton(icon: Icon(Icons.arrow_drop_up),onPressed: (){},),),
          Expanded(flex: 2, child: Text("$cart_product_quantity")),
          Expanded( child: IconButton(icon: Icon(Icons.arrow_drop_down),onPressed: (){},),)
        ],
      ),
    ));
  }
}
