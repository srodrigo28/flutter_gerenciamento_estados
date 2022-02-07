import 'package:flutter/material.dart';
import 'package:flutter_gerenciamento_estados/models/saldo.dart';
import 'package:flutter_gerenciamento_estados/models/transferencias.dart';
import 'package:flutter_gerenciamento_estados/screens/dashboard/dashboard.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (context) => Saldo(0),
      ),
      ChangeNotifierProvider(
          create: (context) => Transferencias(),
      )
    ],
    child: BytebankApp(),
));

class BytebankApp extends StatelessWidget {
  const BytebankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green[900],
        //cardColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      //home: ListaTransferencias(),
      home: Dashboard(),
    );
  }
}
