import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../components/editor.dart';
import '../../models/saldo.dart';

const _tituloAppBar = 'Receber depósito';
const _dicaCampoValor = '0.00';
const _rotuloCampoValor = 'Valor';
const _textoBotaoConfirmar = "Confirmar";

class FormularioDeposito extends StatelessWidget {
  //const FormularioDeposito({Key? key}) : super(key: key);

  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(
              dica: _dicaCampoValor,
              controlador: _controladorCampoValor,
              rotulo: _rotuloCampoValor,
              icone: Icons.monetization_on,
            ),
            ElevatedButton(
              child: Text(_textoBotaoConfirmar),
              onPressed: () => _criaDeposito(context),
            ),
          ],
        ),
      )
    );
  }
  _criaDeposito(context){
    final double? valor = double.tryParse(_controladorCampoValor.text);
    final depositoValido = _validaDeposito(valor);

    if(depositoValido){
      _atualizaEstado(context, valor);
      Navigator.pop(context);
    }
  }
  _validaDeposito(valor){
    final _campoPreenchido = valor != null;
    return _campoPreenchido;
  }
  _atualizaEstado(context, valor){
    Provider.of<Saldo>(context, listen:false).adiciona(valor);
  }
}

