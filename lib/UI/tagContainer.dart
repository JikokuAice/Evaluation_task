import 'package:flutter/material.dart';

class Tagcontainer extends StatefulWidget {
  const Tagcontainer(
      {super.key,
      this.buttonColor = const Color.fromARGB(255, 213, 213, 213),
      required this.name,
      this.textColor = Colors.black});
  final Color buttonColor;
  final String name;
  final Color textColor;
  @override
  State<Tagcontainer> createState() => _TagcontainerState();
}

class _TagcontainerState extends State<Tagcontainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, top: 30),
      child: Container(
          height: 30,
          width: 85,
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: widget.buttonColor.withOpacity(0.6)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text(widget.name,
                style: TextStyle(
                    color: widget.textColor, fontWeight: FontWeight.w600)),
            Container(
              width: 20,
              height: 20,
              color: widget.buttonColor,
              child: Center(
                  child: Text(
                "5",
                style: TextStyle(
                    color: widget.textColor, fontWeight: FontWeight.w600),
              )),
            ),
          ])),
    );
  }
}
