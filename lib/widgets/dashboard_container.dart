import 'package:flutter/material.dart';

class DashContainer extends StatelessWidget {
  const DashContainer({
    super.key,
    required this.child,
    this.onPressed,
  });
  final Widget child;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.black26,
            border: Border.all(),
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: const [
              BoxShadow(
                blurRadius: 2,
                color: Colors.blueGrey,
                offset: Offset(0, 1),
                spreadRadius: 2,
              ),
            ]),
        child: child,
      ),
    );
  }
}
