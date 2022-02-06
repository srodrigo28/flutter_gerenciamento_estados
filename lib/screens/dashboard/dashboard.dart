import 'package:flutter/material.dart';
import 'package:flutter_gerenciamento_estados/models/saldo.dart';
import 'package:flutter_gerenciamento_estados/screens/dashboard/saldo.dart';

class Dashboard extends StatelessWidget {
  //const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Byteback"),
      ),
      body: Align(
          alignment: Alignment.topCenter,
          child: SaldoCard(Saldo(100.0)),
      ),
    );
  }
}
