import 'package:flutter/material.dart';

class Containersecond extends StatelessWidget {
  const Containersecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 10, bottom: 15, left: 10),
      child: Container(
        width: 200,
        height: 70,
        decoration: BoxDecoration(
            color: Color.fromARGB(237, 214, 227, 255),
            borderRadius: BorderRadius.circular(4)),
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.local_fire_department_rounded,
                    color: Color.fromARGB(195, 3, 80, 246),
                  ),
                  Text(
                    "A new shipment Available",
                    style: TextStyle(
                        color: Color.fromARGB(
                          195,
                          3,
                          80,
                          246,
                        ),
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Details",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Icon(
                    Icons.arrow_right_alt_rounded,
                    size: 10,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
