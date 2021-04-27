import 'dart:math';
import 'package:flutter/material.dart';

class HomeTela extends StatefulWidget {
  @override
  _HomeTelaState createState() => _HomeTelaState();
}

class _HomeTelaState extends State<HomeTela> {
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
      body: Container(
        padding: EdgeInsets.all(40),
        child: ListView(
          children: [
            SizedBox(height: 40),
            ListTile(
              trailing: Icon(Icons.calculate, color: Colors.white),
              title: Text('Calculadora',
                  style: TextStyle(fontSize: 26, color: Colors.white)),
              onTap: () {
                Navigator.pushNamed(context, '/calculadora');
              },
              hoverColor: Colors.white,
            ),
            SizedBox(height: 40),
            ListTile(
              trailing: Icon(Icons.calculate, color: Colors.white),
              title: Text('Sobre',
                  style: TextStyle(fontSize: 26, color: Colors.white)),
              onTap: () {
                Navigator.pushNamed(context, '/sobre');
              },
              hoverColor: Colors.white,
            ),
            SizedBox(height: 40),
            ListTile(
              trailing: Icon(Icons.calculate, color: Colors.white),
              title: Text('Sobre o calculo',
                  style: TextStyle(fontSize: 26, color: Colors.white)),
              onTap: () {
                Navigator.pushNamed(context, '/sobrecalculo');
              },
              hoverColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
