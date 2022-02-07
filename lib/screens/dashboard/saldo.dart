import 'package:flutter/material.dart';
import 'package:flutter_gerenciamento_estados/models/saldo.dart';
import 'package:provider/provider.dart';

class SaldoCard extends StatelessWidget {
  //const Saldo({Key? key}) : super(key: key);

  final Saldo saldo;

  SaldoCard(this.saldo);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Consumer<Saldo>(
          builder: (context, valor, child){
            return Text(valor.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold
              ),
            );
          }
        ),
      ),
    );
  }
}
