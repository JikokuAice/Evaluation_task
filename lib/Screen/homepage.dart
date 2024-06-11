import 'package:evaluation_task/Screen/Expanded_left.dart';
import 'package:evaluation_task/Screen/Expanded_middle.dart';
import 'package:evaluation_task/Screen/Expandedright.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  State<homepage> createState() => _homepage();
}

class _homepage extends State<homepage> {
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: const Row(
        children: [ExpandedLeft(), ExpandedMiddle(), Expandedright()],
      ),
    );
  }
}
