import 'dart:math';
import 'package:flutter/material.dart';

//
// TELA PRINCIPAL
//
class SobreTela extends StatefulWidget {
  @override
  _SobreTelaState createState() => _SobreTelaState();
}

class _SobreTelaState extends State<SobreTela> {
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
            ListTile(
              title: Text('Tema',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              subtitle: Text(
                  '\n\nAplicativo para calcular unidade de medida informática, onde um arquivo digital ocupa um espaço de armazenamento. ',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontStyle: FontStyle.italic)),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text('Objetivo do aplicativo',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              subtitle: Text(
                  '\n\nFacilitar para o usuário o calculo da soma de arquivos digitais ou alocação de um determinado espaço em disco, para que a conversão do espaço seja mais precisa possivel.\n\n\n\nVinicius da Silva Gonçalves ',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontStyle: FontStyle.italic)),
            ),
          ],
        ),
      ),
    );
  }
}
