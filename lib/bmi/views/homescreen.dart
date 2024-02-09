import 'package:devnoite_quiz/bmi/service/colors.dart';
import 'package:devnoite_quiz/bmi/views/result_page.dart';
import 'package:devnoite_quiz/bmi/widgets/app_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          GestureDetector(
            onTap: () {
              print("Cliquei");
            },
            child: const AppContainer(),
          ),
          const AppContainer(
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
