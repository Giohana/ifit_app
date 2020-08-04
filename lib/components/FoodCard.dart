import 'package:flutter/material.dart';
import 'Receita.dart';

//ARRUMAR O COD. PRA NÃO FICAR REPETITIVO
class FoodCard extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: InkWell(
          borderRadius: new BorderRadius.circular(15.0),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Receita()));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 100,
                width: 500,
                child: Row(
                  children: <Widget>[
                    Spacer(flex: 3),
                    Text(
                      'Panqueca Integral',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24.0,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class FoodCardTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: InkWell(
          borderRadius: new BorderRadius.circular(15.0),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ReceitaBoloBanana()));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 100,
                width: 500,
                child: Row(
                  children: <Widget>[
                    Spacer(flex: 3),
                    Text(
                      'Bolo de Banana Fit\n de Liquidificador',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24.0,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
final foodCardTwo = new Container(
  child: Card(
    child: InkWell(
      borderRadius: new BorderRadius.circular(15.0),
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 100,
            width: 500,
            child: Row(
              children: <Widget>[
                Spacer(flex: 3),
                Text(
                  'Bolo de Banana',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    ),
  ),
);*/
