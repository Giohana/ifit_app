import 'package:flutter/material.dart';
import 'package:ifit_app/Perfil.dart';
import 'CardComida.dart';
import 'NewReceita.dart';

// FAZER OS CONTROLERS E ARRUMAR O COD.
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
          child: Row(
        children: [
          Spacer(),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                debugPrint('botão pesquisar');
              }),
        ],
      )),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 100.0,
              child: DrawerHeader(
                child: Text(
                  'IFit - Home',
                  style: TextStyle(
                    fontFamily: 'NotoSans',
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Perfil'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Perfil()));
              },
            ),
          ],
        ),
      ),
      body: Column(children: <Widget>[
        new CardComida(),
        new CardComidaTwo(),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NewReceita()));
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
