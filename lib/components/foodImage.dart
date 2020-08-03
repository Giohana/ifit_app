import 'package:flutter/material.dart';



  final foodImage = new Container(
  margin: new EdgeInsets.symmetric(
    vertical: 16.0,
  ),
  height: 92.0,
  width: 92.0,
  alignment: FractionalOffset.centerLeft,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    image: DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage('assets/images/panqueca.jpeg'),
    ),
  ),
);



final foodImageTwo = new Container(
  margin: new EdgeInsets.symmetric(
    vertical: 16.0,
  ),
  height: 92.0,
  width: 92.0,
  alignment: FractionalOffset.centerLeft,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    image: DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage('assets/images/bolo.jpg'),
    ),
  ),
);

