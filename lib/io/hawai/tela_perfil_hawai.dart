import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TelaPerfilHawai extends StatefulWidget {
  @override
  _TelaPerfilHawaiState createState() => _TelaPerfilHawaiState();
}

class _TelaPerfilHawaiState extends State<TelaPerfilHawai> {
  TextEditingController nomeController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    recuperarValores();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Meu perfil"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: nomeController,
            ),
            RaisedButton(
              color: Colors.red,
              child: Text(
                "Salvar",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              onPressed: () {
                salvarNoSharedPreferences();
              },
            )
          ],
        ),
      ),
    );
  }

  void salvarNoSharedPreferences() async {
    String nome = nomeController.text;
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("key_nome", nome);
  }

  void recuperarValores() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    nomeController.text=   preferences.getString("key_nome");
  }
}
