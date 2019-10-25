import 'package:flutter/material.dart';

class InicioTab extends StatefulWidget {
  @override
  _InicioTabState createState() => _InicioTabState();
}

class _InicioTabState extends State<InicioTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          // height: MediaQuery.of(context).size.height,
          color: Colors.grey[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.12,
                color: Colors.blue,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    color: Colors.red,
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: Image.asset(
                      "images/dropbox.jpg",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.flash_on,
                          size: 30,
                        ),
                        Text(
                          "Acesso rápido",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        criarContainerBranco(
                            "Vazamento", "Água ou esgoto", Icon(Icons.headset)),
                        criarContainerBranco(
                            "Reparos na rua", "Água ou esgoto", Icon(Icons.hd)),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        criarContainerBranco("Denúncia", "Fraudes e imóveis",
                            Icon(Icons.keyboard_voice)),
                        criarContainerBranco("Minhas Ocorrencias",
                            "Situação atual", Icon(Icons.insert_link)),
                      ]),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.flash_on),
                        Text(
                          "Mais serviços?",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  criarContainerGrandeGesse()
                ],
              )
            ],
          )),
    );
  }
  Widget criarContainerBranco(String texto1, String texto2, Icon icone) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            color: Colors.white,
            child: Row(
              children: <Widget>[
                icone,
                Column(
                  children: <Widget>[
                    Text(
                      texto1,
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    Text(
                      texto2,
                      style: TextStyle(fontSize: 12, color: Colors.blue),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }

  Widget criarContainerGrandeGesse() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Pergunte para a Gesse!",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Row(
              children: <Widget>[
                Container(
                    height: 100,
                    width: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: Image.asset(
                        "images/icone_atendente.png",
                      ),
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    criarLinhaIconeETexto("Religação"),
                    criarLinhaIconeETexto("Segunda via"),
                    criarLinhaIconeETexto("Falta d'agua"),
                    criarLinhaIconeETexto("Verificação de consumo"),
                    criarLinhaIconeETexto("Deslocamento de hidrômetro"),
                    criarLinhaIconeETexto("Histórico de pagamentos"),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget criarLinhaIconeETexto(String texto) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.check,
          color: Colors.green,
        ),
        Text(
          texto,
          style: TextStyle(color: Colors.black, fontSize: 14),
        )
      ],
    );
  }
}
