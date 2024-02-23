import 'package:devnoite_quiz/bmi/service/constants.dart';
import 'package:devnoite_quiz/bmi/widgets/app_container.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.imc,
    required this.textInterpreta,
    required this.textResultado,
  });

  final String imc;
  final String textResultado;
  final String textInterpreta;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kInactiveCardColour,
        appBar: AppBar(
          backgroundColor: kInactiveCardColour,
          centerTitle: true,
          title: const Text(
            'Resultado',
            style: TextStyle(
              color: kBottomContainerColour,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Expanded(
                flex: 5,
                child: AppContainer(
                  cor: kActiveCardColour,
                  components: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                       Text(textResultado, style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff24D876,),
                        ),),
                      Text(
                        imc,
                        style: const TextStyle(
                          fontSize: 90,
                          fontWeight: FontWeight.bold,
                          color: kBottomContainerColour,
                        ),
                      ),
                       Text(textInterpreta, style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.normal,
                          color: kBottomContainerColour,
                        ),),
                    ],
                  ),
                )),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                  color: kBottomContainerColour,
                  height: 50,
                  child: Center(
                      child: Text(
                    "Refazer".toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ))),
            )
          ],
        ));
  }
}
