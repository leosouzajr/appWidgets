import 'package:app_widgets/io/hawai/drawer_hawai.dart';
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
            criarCard("Pizzas", Image.asset("images/pizza.jpg")),
            criarCard("Massas", Image.asset("images/massas.jpg")),
            criarCard("Pasteis", Image.asset("images/pasteis.png")),
            criarCard("Sanduiches", Image.asset("images/sanduiche.jpg"))
          ],
        ),
      ),
      drawer: DrawerHawai(),
    );
  }

  Widget criarCard(String alimento, Image imagem) {
    return Card(
      elevation: 4,
      child: Stack(
        children: <Widget>[
          imagem,
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                color: Colors.black38,
                child: Center(
                  child: Text(
                    alimento,
                    style:TextStyle(color: Colors.white,fontSize: 15) ,),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
