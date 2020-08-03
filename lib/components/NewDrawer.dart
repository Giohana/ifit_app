import 'package:flutter/material.dart';
import 'Perfil.dart';

class NewDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
    );
  }
}
