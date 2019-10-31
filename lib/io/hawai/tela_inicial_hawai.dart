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
      ),
      body: Container(
        color: Colors.white,
      ),
      drawer: DrawerHawai(),
    );
  }
}