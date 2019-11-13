import 'package:flutter/material.dart';

class TelaListaALimentos extends StatefulWidget {
  final String alimentoEscolhido;
  TelaListaALimentos(this.alimentoEscolhido);

  @override
  _TelaListaALimentosState createState() => _TelaListaALimentosState();
}

class _TelaListaALimentosState extends State<TelaListaALimentos> {
  List<Map <String,dynamic> > listaPizzas = [
     {
       "sabor": "Calabresa",
       "valor": 15.00
     },
     {
       "sabor": "Mussarela",
       "valor": 12.00
     },
     {
       "sabor": "Frango com catupiry",
       "valor": 17.00
     }
   ];
 List<Map <String,dynamic> > listaSanduba = [
     {
       "sabor": "hamburguer",
       "valor": 8.00
     },
     {
       "sabor": "X-tudo",
       "valor": 14.00
     },
     {
       "sabor": "cheeseburguer",
       "valor": 13.00
     },
     {
       "sabor": "bauru",
       "valor": 11.00
     }
   ];
  List<Map<String,dynamic>> listaAtual = [];

  @override
  void initState() {
    switch (widget.alimentoEscolhido) {
      case "Pizzas":
          setState(() {
              listaAtual=listaPizzas;
          });
        break;
      case "Sanduiches":
       setState(() {
          listaAtual=listaSanduba  ;
       });
        break;
      default:
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Cardápio"),
      ),
      body: Container(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: listaAtual.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(listaAtual[index]["sabor"],
                style: TextStyle(fontSize: 24)),
              trailing: Text(
                listaAtual[index]["valor"].toString(),
                style: TextStyle(color: Colors.red,fontSize: 20),
              ),
            );
          },
        ),
      ),
    );
  }
}
