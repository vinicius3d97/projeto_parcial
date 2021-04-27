import 'dart:math';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  var _txtMegabyte = TextEditingController();
  var _txtGigabyte = TextEditingController();
  var _txtTerabyte = TextEditingController();

  var _formId = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Megabytes ',
            style: Theme.of(context).textTheme.headline1),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.delete_rounded),
              onPressed: () {
                setState(() {
                  _formId.currentState.reset();
                  _txtMegabyte.clear();
                  _txtGigabyte.clear();
                  _txtTerabyte.clear();
                  FocusScope.of(context).unfocus();
                });
              })
        ],
      ),
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40),
          child: Form(
            key: _formId,
            child: Column(children: [
              Icon(Icons.calculate_sharp,
                  size: 120, color: Theme.of(context).primaryColor),
              campoTexto('Megabyte', _txtMegabyte),
              campoTexto('Gigabyte', _txtGigabyte),
              campoTexto('Terabyte', _txtTerabyte),
              botao('calcular'),
            ]),
          ),
        ),
      ),
    );
  }

  Widget campoTexto(rotulo, variavel) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: variavel,
        decoration: InputDecoration(
          labelText: rotulo,
          labelStyle: TextStyle(color: Colors.black),
          hintText: 'Entre com o valor',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Widget botao(rotulo) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      width: double.infinity,
      height: 70,
      child: ElevatedButton(
        child: Text(rotulo, style: Theme.of(context).textTheme.headline1),
        onPressed: () {
          setState(() {
            double megabyte = double.parse(_txtMegabyte.text);
            double gigabyte = double.parse(_txtGigabyte.text);
            double terabyte = double.parse(_txtTerabyte.text);

            if (megabyte != 0) {
              double resultmegabyte = megabyte / 1024;
              double resultterabyte = resultmegabyte / 1024;
              caixaDialogo(
                  'O valor em Gigabyte é ${resultmegabyte.toStringAsFixed(2)}\n\n O valor em Terabyte é ${resultterabyte.toStringAsFixed(2)}');
            }
            if (gigabyte != 0) {
              double resultgigabyte = gigabyte * 1024;
              double resultterabyte = resultgigabyte / 1024;
              caixaDialogo(
                  'O valor em Megabyte é ${resultgigabyte.toStringAsFixed(2)}\n\n O valor em Terabyte é ${resultterabyte.toStringAsFixed(2)}');
            }
            if (terabyte != 0) {
              double resultgigabyte = terabyte * 1024;
              double resultmegabyte = resultgigabyte * 1024;
              caixaDialogo(
                  'O valor em Gigabyte é ${resultgigabyte.toStringAsFixed(2)}\n\n O valor em Megabyte é ${resultmegabyte.toStringAsFixed(2)}');
            }
          });
        },
      ),
    );
  }

  caixaDialogo(msg) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Resultado'),
            content: Text(msg),
            actions: [
              TextButton(
                child: Text('fechar'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}
