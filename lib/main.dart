import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dados'),
          backgroundColor: Colors.blue,
        ),
        body: _novaPaginaDados(),
      ),
    ),
  );
}

class _novaPaginaDados extends StatefulWidget {
  const _novaPaginaDados({Key? key}) : super(key: key);

  @override
  State<_novaPaginaDados> createState() => new __novaPaginaDadosState();
}

int funcaoRandomica() {
  var numero = Random();

  return numero.nextInt(6) + 1;
}

class __novaPaginaDadosState extends State<_novaPaginaDados> {
  int mudancaDado1 = 6;
  int mudancaDado2 = 3;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(children: <Widget>[
      Expanded(
        child: FlatButton(
          onPressed: () {
            setState(() {
              mudancaDado1 = funcaoRandomica();
            });
          },
          child: Image.asset('images/dado$mudancaDado1.png'),
        ),
      ),
      Expanded(
        child: FlatButton(
          onPressed: () {
            setState(() {
              mudancaDado2 = funcaoRandomica();
            });
          },
          child: Image.asset('images/dado$mudancaDado2.png'),
        ),
      ),
    ]));
  }
}
