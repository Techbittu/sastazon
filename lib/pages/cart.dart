import 'package:flutter/material.dart';
import 'package:sastazon/components/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
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
      body: cart_products(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
                child: ListTile(
                  title: Text("Total:"),
                  subtitle: Text("₹ 90"),
                )
            ),
            Expanded(
                child: MaterialButton(onPressed: (){},
                child: Text(
                  "Check Out",style: TextStyle(color: Colors.white),
                ),
                  color: Colors.red,
                )
            )
          ],
        ),
      ),
    );
  }
}
