import 'package:devnoite_quiz/controller/quiz_controller.dart';
import 'package:flutter/material.dart';

//Estanciar  o nosso controller
QuizController quizController = QuizController();

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Widget> iconsScore = [];

  //Método/função recebe a resposta do user e verifica
  //se está correta!

  //OBS: as {} dentro dos parâmetros da função, indicam que eles
  //são nomeados
  void verifyAnswer({required bool userAnwser}) {
    if (quizController.hasFinished()) {
//Mandar um alerta pro usuário e vou resetar o quiz
//E zerar os icones

      quizController.reset();
      iconsScore.clear();
    } else {
      setState(() {
        if (quizController.getCorrectAns() == userAnwser) {
          iconsScore.add(const Icon(
            Icons.check,
            color: Color.fromARGB(255, 31, 207, 37),
          ));

          quizController.setUserPoints();
        } else {
          iconsScore.add(const Icon(
            Icons.close,
            color: Colors.pink,
          ));
        }
        quizController.nextQuestion();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 27, 27),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Neste Text, estamos pegando a questão atual!
          Center(
            child: Text(
              quizController.getUserPoints(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Center(
              child: Text(
                quizController.getQuestion(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text(
                "True",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                verifyAnswer(userAnwser: true);
              },
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text(
                "False",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                verifyAnswer(userAnwser: false);
              },
            ),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: iconsScore.isEmpty
                ? [
                    const SizedBox(
                      height: 25,
                    ),
                  ]
                : iconsScore,
          )
        ],
      ),
    );
  }
}
