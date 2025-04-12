import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.colors,
    required this.child, //accept a child widget
  }); // constructor

  const GradientContainer.violet({super.key, required this.child})
    : colors = const [
        Color.fromARGB(255, 142, 16, 164),
        Colors.deepPurple,
      ]; // named constructor

  final List<Color> colors;
  final Widget child;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: colors,
        ),
      ),
      child: Center(child: child),
    );
  }
}
