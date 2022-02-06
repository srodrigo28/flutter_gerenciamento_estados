import 'package:flutter/material.dart';
import 'package:flutter_gerenciamento_estados/models/saldo.dart';

class SaldoCard extends StatelessWidget {
  //const Saldo({Key? key}) : super(key: key);

  final Saldo saldo;

  SaldoCard(this.saldo);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Text(saldo.toString(),
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
