import 'package:flutter/material.dart';

class Greendot extends StatelessWidget {
  const Greendot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 4.0,
      height: 4.0,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 76, 175, 79),
        shape: BoxShape.circle,
      ),
    );
  }
}
