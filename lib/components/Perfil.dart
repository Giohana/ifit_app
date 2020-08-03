import 'package:flutter/material.dart';

import 'CardComida.dart';

class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  int count = 12;
  bool follow = false;
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
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 60,
                  ),
                  new Container(
                    margin: new EdgeInsets.symmetric(
                      horizontal: 90.0,
                    ),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/fotoPerfil.jpg'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Giohana Bassegio',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30.0, fontFamily: 'NotoSans'),
                  ),
                  Text(
                    '$count seguidores',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, fontFamily: 'NotoSans'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50.0,
                    margin: new EdgeInsets.symmetric(
                      horizontal: 90.0,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        debugPrint('$follow');
                        debugPrint('$count');
                        setState(() {
                          if (!follow) {
                            follow = true;
                            count++;
                          } else {
                            follow = false;
                            count--;
                            debugPrint('$count');
                          }
                          debugPrint("após clicar:");
                        });
                        debugPrint('$follow');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Center(
                              child: Text(
                                'Seguir',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: "NotoSans",
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '\nReceitas Publicadas:',
                    style: TextStyle(
                      fontFamily: 'DancingScript',
                      fontSize: 34.0,
                    ),
                  ),
                  new CardComida(),
                  new CardComidaTwo(),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ));
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
