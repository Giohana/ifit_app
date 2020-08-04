import 'package:flutter/material.dart';

// FAZER CONTROLERS
class NewReceita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar nova receita'),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            width: 100,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 40,
              ),
              Container(
                width: 300,
                alignment: Alignment.centerRight,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Ex. Bolo de Banana',
                    labelText: 'Qual o nome da comida?',
                  ),
                  onSaved: (String value) {},
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 40,
              ),
              Container(
                width: 300,
                alignment: Alignment.centerRight,
                child: TextFormField(
                  
                  decoration: const InputDecoration(
                    labelText: 'Ingredientes:',
                    hintText: 'Ex. 1 xícara de farinha.',
                  ),
                  onSaved: (String value) {},
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 40,
              ),
              Container(
                width: 300,
                alignment: Alignment.centerRight,
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Modo de preparo:',
                    hintText: 'Ex. Esmague as banana.',
                  ),
                  onSaved: (String value) {},
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Text(
                  'Confirmar',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 25,
                    fontFamily: "NotoSans",
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
