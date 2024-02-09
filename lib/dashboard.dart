import 'package:devnoite_quiz/bmi/views/homescreen.dart';
import 'package:devnoite_quiz/data/app_data.dart';
import 'package:devnoite_quiz/widgets/dashboard_container.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Senai Cotia 2024",
        ),
      ),
      body: GridView.count(
          padding: const EdgeInsets.all(8),
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 3,
          // Generate 100 widgets that display their index in the List.
          children: appDashItem
              .map((item) => DashContainer(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
              builder: (context) => const HomeScreenBmi(),
            ),
                  );
                },
                      child: Column(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Text(
                            item.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          )),
                      Expanded(
                          flex: 4,
                          child: Image.asset(
                            item.iconName,
                          ))
                    ],
                  )))
              .toList()),

/*
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        height: 50,
      ),
      floatingActionButton: FloatingActionButton.small(onPressed: (){}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

*/
    );
  }
}
