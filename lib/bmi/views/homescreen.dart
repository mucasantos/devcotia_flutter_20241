import 'package:devnoite_quiz/bmi/service/constants.dart';
import 'package:devnoite_quiz/bmi/views/result_page.dart';
import 'package:devnoite_quiz/bmi/widgets/app_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Para Seleção de genêros, criar "enum"

enum Genero { feminino, masculino }

class HomeScreenBmi extends StatefulWidget {
  const HomeScreenBmi({super.key});

  @override
  State<HomeScreenBmi> createState() => _HomeScreenBmiState();
}

class _HomeScreenBmiState extends State<HomeScreenBmi> {
  Genero? generoSelecionado;
  int altura = 55;
  int idade = 16;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kInactiveCardColour,
      appBar: AppBar(
        backgroundColor: kInactiveCardColour,
        centerTitle: true,
        title: const Text(
          'Calculadora IMC',
          style: textStyle,
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: AppContainer(
                  onPressed: () {
                    setState(() {
                      generoSelecionado = Genero.masculino;
                    });
                  },
                  selecionado: generoSelecionado == Genero.masculino,
                  cor: generoSelecionado == Genero.masculino
                      ? Colors.blueGrey
                      : Colors.white,
                  components: const Column(children: [
                    Icon(
                      FontAwesomeIcons.venus,
                      size: 80,
                      color: kBottomContainerColour,
                    ),
                    Text(
                      'Masculino',
                      style: textStyle,
                    ),
                  ]),
                ),
              ),
              Expanded(
                child: AppContainer(
                  onPressed: () {
                    setState(() {
                      generoSelecionado = Genero.feminino;
                    });
                  },
                  selecionado: generoSelecionado == Genero.feminino,
                  cor: generoSelecionado == Genero.feminino
                      ? Colors.blueGrey
                      : Colors.white,
                  components: const Column(children: [
                    Icon(
                      FontAwesomeIcons.mars,
                      size: 80,
                      color: kBottomContainerColour,
                    ),
                    Text(
                      'Feminino',
                      style: textStyle,
                    ),
                  ]),
                ),
              ),
            ],
          ),
          AppContainer(
            cor: Colors.blueGrey,
            components: Column(children: [
              const Text(
                'Altura',
                style: TextStyle(fontSize: 30, color: kBottomContainerColour),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(altura.toString(),
                      style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: kBottomContainerColour)),
                  const Text(
                    'cm',
                    style:
                        TextStyle(fontSize: 30, color: kBottomContainerColour),
                  )
                ],
              ),
              Slider(
                  activeColor: kBottomContainerColour,
                  inactiveColor: kInactiveCardColour,
                  min: 50,
                  max: 230,
                  value: altura.toDouble(),
                  onChanged: (value) {
                    setState(() {
                      altura = value.round();
                    });
                  }),
            ]),
          ),
          Row(
            children: [
              Expanded(
                  child: AppContainer(
                components: Column(children: [
                  const Text("Idade"),
                  Text(idade.toString()),
                  Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            //shape: const CircleBorder(),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                          ),
                          onPressed: () {
                            setState(() {
                              idade++;
                            });
                          },
                          child: const Icon(
                            Icons.add,
                            color: kBottomContainerColour,
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                          ),
                          onPressed: () {

                            setState(() {
                              idade--;
                            });
                          },
                          child: const Icon(
                            Icons.remove,
                            color: kBottomContainerColour,
                          )),
                    ],
                  )
                ]),
                cor: kActiveCardColour,
              )),
            ],
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ResultPage(
                resultado: altura.toString(),
              ),
            ),
          );
        },
        tooltip: 'Increment Counter',
        child: const Icon(
          Icons.check,
          color: kBottomContainerColour,
        ),
      ),
    );
  }
}
