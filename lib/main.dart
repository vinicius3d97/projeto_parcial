import 'package:flutter/material.dart';

import 'calculadora.dart';
import 'menu.dart';
import 'sobre.dart';
import 'sobrecalculo.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Calculadora de Megabytes',
    initialRoute: '/primeira',
    routes: {
      '/primeira': (context) => LoginPage(),
      '/calculadora': (context) => TelaPrincipal(),
      '/menu': (context) => HomeTela(),
      '/sobrecalculo': (context) => SobrecalTela(),
      '/sobre': (context) => SobreTela(),
    },

    //Tema
    theme: ThemeData(
      primaryColor: Colors.blue[900],
      backgroundColor: Colors.grey[100],
      fontFamily: 'Roboto', //Raleway
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 22, color: Colors.white),
        headline2: TextStyle(fontSize: 36),
        headline3: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
      ),
    ),
  ));
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Megabytes ',
            style: Theme.of(context).textTheme.headline1),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                    labelText: "Usuario",
                    labelStyle: TextStyle(color: Colors.white)),
              ),
              Divider(),
              TextFormField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.white)),
              ),
              Divider(),
              ButtonTheme(
                height: 60.0,
                child: RaisedButton(
                  onPressed: () =>
                      {Navigator.pushReplacementNamed(context, '/menu')},
                  child: Text(
                    "Entrar",
                    style: TextStyle(color: Colors.black),
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
