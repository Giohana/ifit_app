import 'package:flutter/material.dart';
import 'FoodCard.dart';
import 'foodImage.dart';

//ARRUMAR O COD. PRA NÃO FICAR REPETITIVO
class CardComida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      child: new Stack(
        children: <Widget>[
          FoodCard(),
          foodImage,
        ],
      ),
    );
  }
}

class CardComidaTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      child: new Stack(
        children: <Widget>[
          FoodCardTwo(),
          foodImageTwo,
        ],
      ),
    );
  }
}
