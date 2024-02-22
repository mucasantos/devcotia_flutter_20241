import 'package:devnoite_quiz/bmi/service/constants.dart';
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
    this.onPressed,
  });

  final Widget? components;
  final Color cor;
  final bool selecionado;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: cor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: boxShadow,
            /*
            border: selecionado
                ? Border.all(
                    width: 1,
                  color: kBottomContainerColour,
                  )
                : null,

                */
          ),
          child: components ??
              const Icon(
                Icons.warning,
              )),
    );
  }
}
