import 'package:flutter/material.dart';
import 'package:flutter_gerenciamento_estados/screens/transferencia/lista.dart';
import 'package:provider/provider.dart';

import '../../models/transferencias.dart';

final _titulo = "Últimas transferências";

class UltimasTransferencias extends StatelessWidget {
  const UltimasTransferencias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          _titulo,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Consumer<Transferencias>(builder: (context, transferencias, child) {
          final _ultimasTransferencias = transferencias.transferencias.reversed.toList();
          final _quantidade = transferencias.transferencias.length;
          int tamanho = 2;

          if(_quantidade == 0){
            return SemTransferenciaCadastrada();
          }

          if (_quantidade < 2) {
            tamanho = _quantidade;
          }

          return ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: tamanho,
            shrinkWrap: true,
            itemBuilder: (context, indice) {
              return ItemTransferencia(_ultimasTransferencias[indice]);
            },
          );
        }),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListaTransferencias();
              }));
            },
            child: Text('Transferências')),
      ],
    );
  }
}

class SemTransferenciaCadastrada extends StatelessWidget{
  const SemTransferenciaCadastrada({Key? key}) : super(key: key);

  Widget build(BuildContext context){
    return const Card(
      margin: EdgeInsets.all(40),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text('Você ainda não tem nenhuma transferência cadastrada',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
