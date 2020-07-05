
import 'package:flutter/material.dart';
import 'package:sastazon/pages/homePage.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sastazon",
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.indigoAccent,
      ),
      darkTheme: ThemeData.dark(),
      home: HomePage(),
    )
  );
}


