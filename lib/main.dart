/*
 * Parou em perfil, por backgroud no home tbm, arrumar os controllers
 * simplificar o codigo, e terminar de fazer,
 * pesquisar sobre se conectar ao banco e salvar o estado
 * ver de deletar tbm e pesquisar
*/

import 'package:flutter/material.dart';
import 'MyHomePage.dart';

//import 'package:flutter_rating_bar/flutter_rating_bar.dart';
//import 'package:share/share.dart';
// • ○ ●

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IFit',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'IFit'),
    );
  }
}

//###################### CODIGO INICIAL PARA SE ALGO DE ERRADO, NÃO RECOMEÇAR DO ZERO ##################################################

/*class MyHomePage extends StatefulWidget {
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
          IconButton(icon: Icon(Icons.search), onPressed: () {
            debugPrint('botão pesquisar');
          }),
        ],
      )),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(),
      body: Column(children: <Widget>[
        new CardComida(),
        new CardComidaTwo(),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}*/

////////////////////////////////////////////////////// Card Um //////////////////////////////////////////////////

/*class CardComida extends StatelessWidget {
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
}*/
// flapjack, zero height, carbom desing syspem, adele, lightin
/*final foodImage = new Container(
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
);*/

/*class FoodCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: InkWell(
          borderRadius: new BorderRadius.circular(15.0),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ReceitaPanqueca()));
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
}*/

/*class ReceitaPanqueca extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Panqueca Integral"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.share),
              onPressed: () {
                Share.share("Receita: Panqueca Integral -> 'https://www.tudogostoso.com.br/receita/160760-massa-de-panqueca-com-farinha-integral.html'");
                debugPrint('cliquei no botão de compartilhar');
              },
            ),
        ],
      ),
      body:  
          ListView(
              children: <Widget> [
              Column(
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
                    Text('\n● 1 xícara de farinha integral\n● 1 xícara de leite\n● 1 ovo\n● 1 pitada de sal\n● 1 colher de óleo',
                       style: TextStyle(
                         fontFamily: 'NotoSans'
                    ),
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
                alignment: Alignment.centerRight,
                child: Column(
                  children: <Widget>[
                    Text('\n\t\t● 1 - Bata todos os ingredientes no liquidificador por 2 minutos.\n\t\t● 2 - Utilize uma frigideira para fritar as panquecas, unte com um fio de óleo e leve ao fogo até aquecer.\n\t\t● 3 - Pegue uma porção de massa e coloque na frigideira.\n\t\t● 4 - Deixe dourar por baixo em seguida vire do outro lado e deixe dourar.\n\t\t● 5 - Use o molho e recheio de sua preferência.\n',
                       style: TextStyle(
                         fontFamily: 'NotoSans',
                        
                    ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ],
        ),
              ],
          ),  
  
    );
  }
}*/

////////////////////////////////////////////// Card dois ///////////////////////////////////////////////////////

/*class CardComidaTwo extends StatelessWidget {
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
          foodCardTwo,
          foodImageTwo,
        ],
      ),
    );
  }
}*/

/*final foodImageTwo = new Container(
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
);*/

/*final foodCardTwo = new Container(
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

/*class ReceitaBoloBanana extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Panqueca Integral"),
      ),
      body: SingleChildScrollView(
        child: 
          Column(
          children: <Widget>[
            Image.asset('assets/images/panqueca.jpeg'),
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
              '\nReceita: Panqueca Integral',
              style: TextStyle(
                fontFamily: 'DancingScript',
                fontSize: 34.0,
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text('\n● 1 xícara de farinha integral\n● 1 xícara de leite\n● 1 ovo\n● 1 pitada de sal\n● 1 colher de óleo',
                     style: TextStyle(
                       fontFamily: 'NotoSans'
                  ),
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
              child: Column(
                children: <Widget>[
                  Text('\n\t\t● 1 - Bata todos os ingredientes no liquidificador por 2 minutos.\n\t\t● 2 - Utilize uma frigideira para fritar as panquecas, unte com um fio de óleo e leve ao fogo até aquecer.\n\t\t● 3 - Pegue uma porção de massa e coloque na frigideira.\n\t\t● 4 - Deixe dourar por baixo em seguida vire do outro lado e deixe dourar.\n\t\t● 5 - Use o molho e recheio de sua preferência.\n',
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
}*/

/*
final foodCard = new Container(
   child: Card(
     
     child: InkWell(
       borderRadius: new BorderRadius.circular(15.0),
       onTap: (){
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => ReceitaPanqueca()));
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
                  Text( 'Panqueca Integral', 
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
