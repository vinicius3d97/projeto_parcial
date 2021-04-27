import 'dart:math';
import 'package:flutter/material.dart';

//
// TELA PRINCIPAL
//
class SobrecalTela extends StatefulWidget {
  @override
  _SobrecalTelaState createState() => _SobrecalTelaState();
}

class _SobrecalTelaState extends State<SobrecalTela> {
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
              title: Text('Sobre o Calculo',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              subtitle: Text(
                  '\n\nTudo começa pelo bit (que é a menor unidade), a cada caractere dessa postagem é igual a um bit, a cada oito caracteres, temos um byte, acompanha na descrição abaixo:\n\n8 Bits = 1 Byte\n\n1024 bytes = 1kb (kilobyte)\n\n1024 kb = 1mb (megabyte)\n\n1024 mb = 1gb (gigabyte)\n\n1024 gb = 1tb (terabyte)\n\nDiferente de outras medidas (que trabalham com valores para cada 1000), as medidas de informática trabalham para cada 1024, por exemplo, se quiser descobrir quantos bytes tem dois megabytes eu preciso multiplicar por 1024. ',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontStyle: FontStyle.italic)),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text('Exemplo',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              subtitle: Text(
                  '\n\n2x1024x1024 = 2097152, portanto, 2mb tem 2097152 bytes ',
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
