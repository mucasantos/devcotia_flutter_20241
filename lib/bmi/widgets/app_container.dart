import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
//Eu tenho que informar que essa propriedade é obrigatóri ou nao!
// required =: ela é cobrigatoria!
// usando ? ela é opcional

  const AppContainer({
    super.key,
    this.components,
  });

  final Widget? components;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 34, 158, 193),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 2,
          ),
        ),
        child: components ?? const Icon(Icons.warning));
  }
}
