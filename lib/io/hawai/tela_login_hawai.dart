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
              decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(color: Colors.red, fontSize: 23)),
              style: TextStyle(color: Colors.green, fontSize: 20),
            ),
            Container(
              height:50,
              child: RaisedButton(
                color: Colors.green,
                child: Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
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
}
