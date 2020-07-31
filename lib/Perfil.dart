import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Perfil'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backgroud.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

// teste esse codigo returado da foodImage
/*
Container(
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
  ),*/