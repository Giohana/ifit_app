import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:share/share.dart';

//ARRUMAR O COD. PRA NÃO FICAR REPETITIVO
class Receita extends StatelessWidget {
  /*String nomeReceita;
  String rota;
  String imagem;  
  String receitaIngredientes;
  String modoPreparo;
Receita({this.nomeReceita, this.rota,this.imagem, this.receitaIngredientes, this.modoPreparo});*/


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Panqueca Integral'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              Share.share("Receita: Panqueca Integral -> 'https://www.tudogostoso.com.br/receita/160760-massa-de-panqueca-com-farinha-integral.html'");
            },
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/panqueca.jpeg'),
            RatingBar(
              initialRating: 4.2,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            Text(
              '\nReceita: Panqueca Integral',
              style: TextStyle(
                fontFamily: 'DancingScript',
                fontSize: 34.0,
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    '\n● 1 xícara de farinha integral\n● 1 xícara de leite\n● 1 ovo\n● 1 pitada de sal\n● 1 colher de óleo',
                    style: TextStyle(fontFamily: 'NotoSans'),
                  ),
                ],
              ),
            ),
            Text(
              '\nModo de Preparo:',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'DancingScript',
                fontSize: 24.0,
              ),
            ),
            Container(
              width: 350,
              child: Column(
                children: <Widget>[
                  Text(
                    '\n\t\t● 1 - Bata todos os ingredientes no liquidificador por 2 minutos.\n\t\t● 2 - Utilize uma frigideira para fritar as panquecas, unte com um fio de óleo e leve ao fogo até aquecer.\n\t\t● 3 - Pegue uma porção de massa e coloque na frigideira.\n\t\t● 4 - Deixe dourar por baixo em seguida vire do outro lado e deixe dourar.\n\t\t● 5 - Use o molho e recheio de sua preferência.\n',
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 50,
            )
          ],
        ),
      ),
    );
  }
}


class ReceitaBoloBanana extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bolo de Banana Fit de Liquidificador"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              Share.share(
                  "Receita: Bolo de Banana -> 'https://receitanatureba.com/bolo-de-banana-fit-de-liquidificador/'");
            },
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/bolo.jpg'),
            RatingBar(
              initialRating: 4.5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            Text(
              '\nReceita: Bolo de Banana',
              style: TextStyle(
                fontFamily: 'DancingScript',
                fontSize: 34.0,
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    '\n● 4 bananas\n● 3 ovos\n● 1 xícara de farinha de aveia\n● 1 xícara de flocos de aveia\n● 100 ml de óleo\n● 3/4 xícara açicar mascavo ou adoçante\n● Castanha triturada a gosto\n● 1 colher(sopa) de canela em pó\n● 1 colher(sopa) de fermento em pó',
                    style: TextStyle(fontFamily: 'NotoSans'),
                  ),
                ],
              ),
            ),
            Text(
              '\nModo de Preparo:',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'DancingScript',
                fontSize: 24.0,
              ),
            ),
            Container(
              width: 370,
              child: Column(
                children: <Widget>[
                  Text(
                    '\n\t\t● 1 -Num liquidificador, adicione as bananas picadas, os ovos, os flocos de aveia, a farinha o açúcar, o óleo e a canela.\n\t\t● Dica - Pode ser adicionar apenas 50 ml de óleo de preferir e adicionar mais 50 ml de leite de coco ou leite desnatado.\n\t\t● 2 - Bata por alguns minutos até que vire uma mistura bem homogênea\n\t\t● 3 - Adicione as castanhas, misture e finalize acrescentando o fermento. Misture lentamente com uma colher.\n\t\t● 4 - Unte uma forma média com açúcar de coco e despeje toda a massa do bolo.\n\t\t● Dica -O açúcar é para deixar uma crostinha caramelizada, se não quiser basta untar a forma com óleo de coco e enfarinhas.\n\t\t● 5 - Leve para assar em forno preaquecido a 200° C por cerca de 40 minutos. Faça o teste do palito.\n\t\t● 6 - Desligue o forno, espere 5 minutos e desenforme.\n\t\t● Dica - Você pode adicionar cacau na mistura da massa. Também pode ser adicionado cubinhos de banana na hora de transferir a massa para a forma, gostas de chocolate ou até mesmo doce de leite fit.\n',
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
