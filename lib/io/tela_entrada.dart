
import 'package:app_widgets/io/hawai/tela_inicial_hawai.dart';
import 'package:flutter/material.dart';

import 'cagece/tela_inicial_cagece.dart';

class TelaEntrada extends StatefulWidget {
  @override
  _TelaEntradaState createState() => _TelaEntradaState();
}

class _TelaEntradaState extends State<TelaEntrada> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Center(
          child: RaisedButton(
            textColor: Colors.white,
            color: Colors.blueAccent,
            child: Text("APP CAGECE"),
            onPressed: () {
              abrirTelaInicialCagece(context);
            },
          ),
        ));
  }

  void abrirTelaInicialCagece(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
         builder: (context) => TelaInicialCagece()
      )
    );
 
  }
}
