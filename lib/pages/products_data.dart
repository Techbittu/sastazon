import 'package:flutter/material.dart';

import 'cart.dart';

class ProductDetails extends StatefulWidget {

  final product_details_name;
  final product_details_picture;
  final product_details_old_price;
  final product_details_price;

  ProductDetails({
    this.product_details_name,
    this.product_details_old_price,
    this.product_details_picture,
    this.product_details_price,
});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.indigoAccent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text("Sastazon",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
            Text("Exclusive",
              style: TextStyle(
                color: Colors.yellow,fontSize: 13.0,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.notifications,color: Colors.white,), onPressed: (){}),
          IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
          }),
        ],
        bottom: PreferredSize(
          child: Padding(padding: const EdgeInsets.all(9.0),
            child: (
                Container(
                  color: Colors.white,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                        ),
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search for Account,Brand..",
                        border: InputBorder.none
                    ),
                  ),
                )
            ),
          ),
          preferredSize: Size.fromHeight(70.0),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: GridTile(
                child: Container(
                  color: Colors.black,
                  child: Image.asset(widget.product_details_picture),
                ),
              footer: Container(
                color: Colors.white,
                child: ListTile(
                  leading: new Text(widget.product_details_name,
                  style: TextStyle(
                    color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0
                  ),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text("₹ ${widget.product_details_old_price}",
                            style:TextStyle(color: Colors.black,decoration: TextDecoration.lineThrough) ,),
                      ),
                      Expanded(
                        child: Text("₹ ${widget.product_details_price}",
                          style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(onPressed: (){
                    showDialog(context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Month"),
                        content: Text("choose the month"),
                        actions: <Widget>[
                          MaterialButton(onPressed: (){
                            Navigator.pop(context);
                          },
                          child: Text("close",style: TextStyle(color: Colors.indigoAccent),),)
                        ],
                      );
                    });
                  },
                  color: Colors.indigoAccent,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Text("Month")
                        ),
                        Expanded(
                          child: Icon(Icons.arrow_drop_down),
                        )
                      ],
                    ),
                  )
              ),
              Expanded(
                  child: MaterialButton(onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text("Screen"),
                            content: Text("choose the Screen"),
                            actions: <Widget>[
                              MaterialButton(onPressed: (){
                                Navigator.pop(context);
                              },
                                child: Text("close",style: TextStyle(color: Colors.indigoAccent),),)
                            ],
                          );
                        });
                  },
                    color: Colors.indigoAccent,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Text("Screen")
                        ),
                        Expanded(
                          child: Icon(Icons.arrow_drop_down),
                        )
                      ],
                    ),
                  )
              ),
              Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      showDialog(context: context,
                          builder: (context){
                            return AlertDialog(
                              title: Text("Qty"),
                              content: Text("choose the Quantity"),
                              actions: <Widget>[
                                MaterialButton(onPressed: (){
                                  Navigator.pop(context);
                                },
                                  child: Text("close",style: TextStyle(color: Colors.indigoAccent),),)
                              ],
                            );
                          });
                    },
                    color: Colors.indigoAccent,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Text("Qty")
                        ),
                        Expanded(
                          child: Icon(Icons.arrow_drop_down),
                        )
                      ],
                    ),
                  )
              ),

            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(onPressed: (){},
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: Text("Buy Now")
                  )
              ),
              IconButton(icon: Icon(Icons.add_shopping_cart,color: Colors.red,), onPressed: (){}),
              IconButton(icon: Icon(Icons.favorite_border,color: Colors.red,), onPressed: (){})
            ],
          ),
          Divider(),
          ListTile(
            title: Text("Product Details"),
            subtitle: Text("Watch Netflix movies & TV shows online or stream right to your smart TV, game console, PC, Mac, mobile, tablet and more"),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Product Name",style: TextStyle(
                  color: Colors.grey,
                ),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: Text("Netflix"),),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Warranty",style: TextStyle(
                  color: Colors.grey,
                ),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: Text("Yes"),),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Stock",style: TextStyle(
                  color: Colors.grey,
                ),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: Text("Available"),),
            ],
          )
        ],
      ),
    );
  }
}
