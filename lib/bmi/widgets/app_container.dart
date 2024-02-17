import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
//Eu tenho que informar que essa propriedade é obrigatóri ou nao!
// required =: ela é cobrigatoria!
// usando ? ela é opcional

  const AppContainer({
    super.key,
    this.components,
    required this.cor,
    this.selecionado = false,
  });

  final Widget? components;
  final Color cor;
  final bool selecionado;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: cor,
          borderRadius: BorderRadius.circular(12),
          border: selecionado
              ? Border.all(
                  width: 1,
                )
              : null,
        ),
        child: components ?? const Icon(Icons.warning));
  }
}
