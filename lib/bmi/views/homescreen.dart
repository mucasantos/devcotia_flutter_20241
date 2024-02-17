
import 'package:devnoite_quiz/bmi/service/colors.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kInactiveCardColour,
      appBar: AppBar(
        title: const Text(
          'Sample Code',
          style: textStyle,
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    generoSelecionado = Genero.masculino;
                  });
                },
                child: AppContainer(
                  selecionado: generoSelecionado == Genero.masculino,
                  cor: generoSelecionado == Genero.masculino
                      ? Colors.blueGrey
                      : Colors.white,
                  components: const Column(children: [
                    Icon(
                      FontAwesomeIcons.venus,
                      size: 80,
                    ),
                    Text('Masculino'),
                  ]),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    generoSelecionado = Genero.feminino;
                  });
                },
                child: AppContainer(
                  selecionado: generoSelecionado == Genero.feminino,
                  cor: generoSelecionado == Genero.feminino
                      ? Colors.blueGrey
                      : Colors.white,
                  components: const Column(children: [
                    Icon(
                      FontAwesomeIcons.mars,
                      size: 80,
                    ),
                    Text('Feminino'),
                  ]),
                ),
              ),
            ],
          ),
          const AppContainer(
            cor: Colors.blueGrey,
            components: Column(children: [
              Text('data'),
              Row(
                children: [Text("data")],
              ),
              Icon(
                FontAwesomeIcons.mars,
                size: 80,
              ),
              Text('Feminino'),
            ]),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ResultPage(),
            ),
          );
        },
        tooltip: 'Increment Counter',
        child: const Icon(Icons.check),
      ),
    );
  }
}
