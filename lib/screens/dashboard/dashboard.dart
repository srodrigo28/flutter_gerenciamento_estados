import 'package:flutter/material.dart';
import 'package:flutter_gerenciamento_estados/models/saldo.dart';
import 'package:flutter_gerenciamento_estados/screens/dashboard/saldo.dart';
import 'package:flutter_gerenciamento_estados/screens/deposito/formulario.dart';
import 'package:flutter_gerenciamento_estados/screens/transferencia/formulario.dart';
import 'package:flutter_gerenciamento_estados/screens/transferencia/lista.dart';
import 'package:flutter_gerenciamento_estados/screens/transferencia/ultimas.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  //const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Byteback"),
      ),
      body: ListView( children: [
        Align(
          alignment: Alignment.topCenter,
          child: SaldoCard(Saldo(0.0)),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context){
                  return FormularioDeposito();
                })
                );
              },
                child: Text('Receber depósito')
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (context){
                return FormularioTransferencia();
              })
              );
            },
                child: Text('Nova transferência')
            ),
          ],
        ),
        const UltimasTransferencias(),
      ],
    )
    );
  }
}
