import 'package:flutter/material.dart';
import 'package:flutter_gerenciamento_estados/models/transferencia.dart';

class Transferencias extends ChangeNotifier{
  final List<Transferencia> _transferencias = [];

  List<Transferencia> get transferencias => _transferencias;

  adiciona(Transferencia novaTransferencia){
    transferencias.add(novaTransferencia);
  }
  notifyListeners();
}