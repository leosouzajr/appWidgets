import 'package:app_widgets/io/conta_tab.dart';
import 'package:app_widgets/io/inicio_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:bmnav/bmnav.dart' as bmnav;

class TelaInicialCagece extends StatefulWidget {
  @override
  _TelaInicialCageceState createState() => _TelaInicialCageceState();
}

class _TelaInicialCageceState extends State<TelaInicialCagece> {
  int indexPaginaAtual = 0;
  Widget tabAtual = InicioTab();
  List<Widget> tabs = [
    InicioTab(),
    ContaTab()
  ];
  List<bmnav.BottomNavItem> itensDaBarra = [
    bmnav.BottomNavItem(Icons.home, label: "Inicio"),
    bmnav.BottomNavItem(Icons.person, label: "Conta"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabAtual,
      bottomNavigationBar: bmnav.BottomNav(
        index: indexPaginaAtual,
        items: itensDaBarra,
        onTap: (i) {
          setState(() {
            indexPaginaAtual = i;
            tabAtual = tabs[i];
          });
        },
      ),
    );
  }
}
