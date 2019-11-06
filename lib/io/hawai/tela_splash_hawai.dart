import 'package:app_widgets/io/hawai/tela_inicial_hawai.dart';
import 'package:app_widgets/io/hawai/tela_login_hawai.dart';
import 'package:flutter/material.dart';

class TelaSplashHawai extends StatefulWidget {
  @override
  _TelaSplashHawaiState createState() => _TelaSplashHawaiState();
}

class _TelaSplashHawaiState extends State<TelaSplashHawai> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Duration duration = Duration(seconds: 2);
    Future.delayed(duration).then((onValue) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => TelaLoginHawai()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: 200,
            child: Center(child: CircularProgressIndicator()),
          ),
          Align(
              child: Text(
            "Carregando APP",
            style: TextStyle(fontSize: 15, color: Colors.red),
          ))
        ],
      ),
    );
  }
}
