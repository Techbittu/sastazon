import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizentalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: "images/cats/videos.png",
            image_caption: "Videos",
          ),
          Category(
            image_location: "images/cats/games.png",
            image_caption: "Games",
          ),
          Category(
            image_location: "images/cats/18.png",
            image_caption: "Adult",
          ),
          Category(
            image_location: "images/cats/software.png",
            image_caption: "Software",
          ),
          Category(
            image_location: "images/cats/seo.png",
            image_caption: "SEO",
          ),
          Category(
            image_location: "images/cats/website.png",
            image_caption: "Domain",
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_caption,
    this.image_location,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
          onTap: () {},
          child: Container(
            width: 100.0,
            child: ListTile(
              title: Image.asset(image_location,
                width: 100.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption,style: TextStyle(color: Colors.indigoAccent,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
              )

            ),
          )
      ),
    );
  }
}
