import 'package:flutter/material.dart';
import 'package:ifit_app/components/NewDrawer.dart';
import 'components/CardComida.dart';
import 'components/NewReceita.dart';

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
        child: NewDrawer(),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backgroud.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: <Widget>[
          new CardComida(),
          new CardComidaTwo(),
        ]),
      ),
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
