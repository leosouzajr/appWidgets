import 'package:app_widgets/io/hawai/tela_perfil_hawai.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DrawerHawai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage("images/pizza.jpg"),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                CircleAvatar(
                  radius: 38,
                  backgroundImage: ExactAssetImage("images/user.png"),
                ),
                Text(
                  "Nome de usuario",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
                Text(
                  "emaildas@gmail.com",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.fastfood),
            title: Text(
              "Cardápio",
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ExpansionTile(
            leading: Icon(Icons.loyalty),
            title: Text(
                  "Promoções",
                  style: TextStyle(fontSize: 20),
                ),
            children: <Widget>[
              ListTile(
                leading: SizedBox(),
                title: Text(
                  "Promoção do dia",
                  style: TextStyle(fontSize: 20),
                ),
              ),
               ListTile(
                 leading: SizedBox(),
                title: Text(
                  "Mac lanche feliz",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          Divider(
            height: 12,
            color: Colors.black,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              "Perfil",
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => 
                  TelaPerfilHawai()));
            },
          ),
        ],
      ),
    );
  }
}
