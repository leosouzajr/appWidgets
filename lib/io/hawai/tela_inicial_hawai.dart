import 'package:app_widgets/io/hawai/drawer_hawai.dart';
import 'package:app_widgets/io/hawai/tela_lista_alimentos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TelaInicialHawai extends StatefulWidget {
  @override
  _TelaInicialHawaiState createState() => _TelaInicialHawaiState();
}

class _TelaInicialHawaiState extends State<TelaInicialHawai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pizzaria Hawai"),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {},
          ),
          PopupMenuButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("Meus pedidos"),
              ),
              PopupMenuItem(
                child: Text("Promoções"),
              ),
            ],
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            criarCard("Pizzas", "images/pizza.jpg"),
            criarCard("Massas", "images/massas.jpg"),
            criarCard("Pasteis", "images/pasteis.png"),
            criarCard("Sanduiches", "images/sanduiche.jpg")
          ],
        ),
      ),
      drawer: DrawerHawai(),
    );
  }

  Widget criarCard(String alimento, String imagem) {
    return GestureDetector(
      child: Card(
        elevation: 4,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage(imagem), fit: BoxFit.fill)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.black38,
                  child: Center(
                    child: Text(
                      alimento,
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      onTap: () {
        print("foi clicado em $alimento");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TelaListaALimentos(alimento))
        );
      },
    );
  }
}
// Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: ExactAssetImage("images/pizza.jpg"),
//                 fit: BoxFit.cover
//               )
//             ),
//           ),
