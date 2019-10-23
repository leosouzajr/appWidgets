import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaInicialCagece extends StatefulWidget {
  @override
  _TelaInicialCageceState createState() => _TelaInicialCageceState();
}

class _TelaInicialCageceState extends State<TelaInicialCagece> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[200],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.12,
              color: Colors.blue,
            ),
            ListView(
                
              shrinkWrap: true,
              children: <Widget>[
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
                     
                      Expanded(
                        
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              color: Colors.white,
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.headset),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        "Vazamento",
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.black),
                                      ),
                                      Text(
                                        "Água ou esgoto",
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.blue),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ),
                      ),
                      Expanded(
                        
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              color: Colors.white,
                              child: Row(
                               
                                children: <Widget>[
                                  Icon(Icons.headset),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        "Vazamento",
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.black),
                                      ),
                                      Text(
                                        "Água ou esgoto",
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.blue),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ),
                      )
                    ]),
                  ],
                )
              ],
            )
          ],
        ));
  }
}
