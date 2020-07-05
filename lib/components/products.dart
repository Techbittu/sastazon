import 'package:flutter/material.dart';
import 'package:sastazon/pages/products_data.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Netflix",
      "picture": "images/products/netflix1.jpg",
      "old_price": 190,
      "price": 90,
    },
    {
      "name": "AltBalaji",
      "picture": "images/products/alt1.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Amazon Prime",
      "picture": "images/products/amazon1.jpg",
      "old_price": 50,
      "price": 40,
    },
    {
      "name": "Brazzers",
      "picture": "images/products/braz1.jpg",
      "old_price": 50,
      "price": 40,
    },
    {
      "name": "GTA V",
      "picture": "images/products/gta1.jpg",
      "old_price": 400,
      "price": 200,
    },
    {
      "name": "Hotstar",
      "picture": "images/products/hotstar1.jpg",
      "old_price": 99,
      "price": 50,
    },
    {
      "name": "PornHub",
      "picture": "images/products/hub1.jpg",
      "old_price": 85,
      "price": 45,
    },
    {
      "name": "Spotify",
      "picture": "images/products/spoty1.jpg",
      "old_price": 99,
      "price": 60,
    },
    {
      "name": "Window 10",
      "picture": "images/products/win10.jpg",
      "old_price": 800,
      "price": 300,
    },
    {
      "name": "Youtube",
      "picture": "images/products/yout1.jpg",
      "old_price": 199,
      "price": 60,
    },
    {
      "name": "Zee5",
      "picture": "images/products/zee5.jpg",
      "old_price": 99,
      "price": 45,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_product(
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            product_old_price: product_list[index]['old_price'],
            product_price: product_list[index]['price'],
          );
        });
  }
}

class Single_product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  Single_product({
    this.product_name,
    this.product_old_price,
    this.product_picture,
    this.product_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails(
              product_details_name: product_name,
              product_details_old_price: product_old_price,
              product_details_picture: product_picture,
              product_details_price: product_price,
            )));},

            child: GridTile(
              footer: Container(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(product_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),),
              Expanded(
                child: Text("₹ $product_price",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20.0) ,),),


                  ],
                )
              ),

                child: Image.asset(product_picture,
                fit: BoxFit.cover,),
            ),
          ),
        ),
      ),
    );
  }
}
