import 'package:flutter/material.dart';

class TelaListaALimentos extends StatefulWidget {
  final String alimentoEscolhido;
  TelaListaALimentos(this.alimentoEscolhido);

  @override
  _TelaListaALimentosState createState() => _TelaListaALimentosState();
}

class _TelaListaALimentosState extends State<TelaListaALimentos> {
  List<String> listaPizzas = ["Calabresa", "Mussarela", "Mista", "Frango"];
  List<String> listaSanduba = [
    "x-tudo",
    "hamburguer",
    "cheesebacon",
  ];
  List<String> listaAtual = [];

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
      body: Container(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: listaAtual.length,
          itemBuilder: (context, index) {
            return Text(listaAtual[index]);
          },
        ),
      ),
    );
  }
}
