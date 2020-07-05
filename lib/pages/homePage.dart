import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:sastazon/components/horizental_listview.dart';
import 'package:sastazon/components/products.dart';
import 'package:sastazon/pages/cart.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    Widget image_carousel =  new Container(
      height: 270.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("images/v1.jpg"),
          AssetImage("images/g1.jpg"),
          AssetImage("images/v2.jpg"),
          AssetImage("images/a1.jpg"),
          AssetImage("images/s1.jpg"),
          AssetImage("images/d1.jpg"),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
        dotColor: Colors.indigoAccent,
        dotIncreasedColor: Colors.yellow,
      ),
    );
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Deepak Arya"),
              accountEmail: Text("deepakaryak9@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person,color: Colors.black,size: 50,),
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.orange,
              onTap: (){},
              child: ListTile(
                title: Text("Home Page",style: TextStyle(fontStyle: FontStyle.italic)),
                leading: Icon(Icons.home,color: Colors.orange,),
              ),
            ),
            Divider(),
            InkWell(
              splashColor: Colors.indigoAccent,
              onTap: (){},
              child: ListTile(
                title: Text("My Account",style: TextStyle(fontStyle: FontStyle.italic)),
                leading: Icon(Icons.person,color: Colors.indigoAccent,),
              ),
            ),
            InkWell(
              splashColor: Colors.indigoAccent,
              onTap: (){},
              child: ListTile(
                title: Text("My Order",style: TextStyle(fontStyle: FontStyle.italic)),
                leading: Icon(Icons.shopping_basket,color: Colors.indigoAccent,),
              ),
            ),
            InkWell(
              splashColor: Colors.indigoAccent,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
              },
              child: ListTile(
                title: Text("Shopping Cart",style: TextStyle(fontStyle: FontStyle.italic)),
                leading: Icon(Icons.shopping_cart,color: Colors.indigoAccent,),
              ),
            ),
            InkWell(
              splashColor: Colors.indigoAccent,
              onTap: (){},
              child: ListTile(
                title: Text("Favourites",style: TextStyle(fontStyle: FontStyle.italic),),
                leading: Icon(Icons.favorite,color: Colors.indigoAccent,),
              ),
            ),
            Divider(),
            InkWell(
              splashColor: Colors.red,
              onTap: (){},
              child: ListTile(
                title: Text("Settings",style: TextStyle(fontStyle: FontStyle.italic)),
                leading: Icon(Icons.settings,color: Colors.red,),
              ),
            ),
            InkWell(
              splashColor: Colors.red,
              onTap: (){},
              child: ListTile(
                title: Text("About",style: TextStyle(fontStyle: FontStyle.italic),),
                leading: Icon(Icons.help,color: Colors.red,),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          HorizentalList(),
          image_carousel,
          Padding(padding: EdgeInsets.all(12.0),
            child: Text("Recent Products",style: TextStyle(color: Colors.indigoAccent,fontWeight: FontWeight.bold,fontSize: 18.0),),
          ),
          Divider(),
          Container(
            height: 320,
            child: Products(),
          )
        ],
      ),
    );
  }
}