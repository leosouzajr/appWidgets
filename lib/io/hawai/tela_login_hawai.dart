import 'package:app_widgets/io/hawai/tela_inicial_hawai.dart';
import 'package:flutter/material.dart';

class TelaLoginHawai extends StatefulWidget {
  @override
  _TelaLoginHawaiState createState() => _TelaLoginHawaiState();
}

class _TelaLoginHawaiState extends State<TelaLoginHawai> {
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.red, fontSize: 23)),
              style: TextStyle(color: Colors.green, fontSize: 20),
            ),
            TextField(
              controller: senhaController,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(color: Colors.red, fontSize: 23)),
              style: TextStyle(color: Colors.green, fontSize: 20),
            ),
            Container(
              height: 50,
              child: RaisedButton(
                color: Colors.green,
                child: Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  fazerLogin(context);
                },
              ),
            ),
            Align(
              child: Text(
                "ou",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              height: 50,
              child: RaisedButton(
                color: Colors.blue,
                child: Row(
                  children: <Widget>[
                    Text(
                      "ENTRE COM O FACEBOOK",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  void fazerLogin(BuildContext context) {
    String email;
    String senha;
    email = emailController.text;
    senha = senhaController.text;

    if (email == "" || senha == "") {
      //EXISTE CAMPO EM BRANCO\
      exibirMensagemDeErro(context, "Existem campos não preenchidos");
    } else {
      if (email == "admin@admin.com" && senha == "qwe123") {
        //MUDA DE TELA

        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => TelaInicialHawai()));
      } else {
        //MENSAGEM DE ERRO DE SENHA E EMAIL
        exibirMensagemDeErro(context, "Usuário e/ou senha incorretos");
      }
    }
  }

  void exibirMensagemDeErro(BuildContext context, String mensagemErro) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Center(child: Text("ERRO DE LOGIN")),
              content: Text(mensagemErro) ,
          );
        }
    );
  }
}
