import 'package:devnoite_quiz/bmi/service/constants.dart';
import 'package:flutter/material.dart';

class BtnCard extends StatelessWidget {
  const BtnCard({
    super.key,
    this.decrease,
    this.increase,
  });

  final VoidCallback? increase;
  final VoidCallback? decrease;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: IconButton(
              style: IconButton.styleFrom(
                backgroundColor: kBottomContainerColour,
                alignment: Alignment.center,
                shape: const CircleBorder(),
                // shape: const RoundedRectangleBorder(
                //    borderRadius:
                //        BorderRadius.all(Radius.circular(15))),
              ),
              onPressed: increase,
              icon: const Icon(
                Icons.add,
                color: kActiveCardColour,
              )),
        ),
        Expanded(
          child: IconButton(
              style: IconButton.styleFrom(
                backgroundColor: kBottomContainerColour,

                alignment: Alignment.center,
                shape: const CircleBorder(),

                //    shape: const RoundedRectangleBorder(
                //        borderRadius:
                //            BorderRadius.all(Radius.circular(15))),
              ),
              onPressed: decrease,
              icon: const Icon(
                Icons.remove,
                color: kActiveCardColour,
              )),
        ),
      ],
    );
  }
}
