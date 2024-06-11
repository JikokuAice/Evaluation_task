import 'package:flutter/material.dart';

class Expandedright extends StatefulWidget {
  const Expandedright({super.key});

  @override
  State<Expandedright> createState() => _ExpandedRightState();
}

class _ExpandedRightState extends State<Expandedright> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
        child: Column(children: [
          //top start
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "Shipment Management",
                style: TextStyle(fontSize: 24),
              ),
              Row(
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                          255, 33, 51, 243), // Change this to the desired color
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(
                      width: 5), // Space between the circle and the text
                  const Text(
                    'On way',
                    style: TextStyle(
                      color: Colors.blue, // Change this to the desired color
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      elevation: WidgetStatePropertyAll(0),
                      backgroundColor: WidgetStatePropertyAll(Colors.white),
                      foregroundColor: WidgetStatePropertyAll(
                          const Color.fromARGB(255, 33, 33, 33)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)))),
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 18,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text("Add Order"),
                      )
                    ],
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white),
                      foregroundColor: WidgetStatePropertyAll(
                          const Color.fromARGB(255, 33, 33, 33)),
                      elevation: WidgetStatePropertyAll(0),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)))),
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(
                        Icons.mail,
                        size: 18,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text("Email"),
                      )
                    ],
                  )),
            ],
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15, right: 300),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'lib/image/vanB.jpg',
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'lib/image/vanB.jpg',
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'lib/image/vanB.jpg',
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'lib/image/vanB.jpg',
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'lib/image/vanB.jpg',
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20),
            child: Align(
                alignment: Alignment.centerLeft, child: Text('Load Capacity')),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset("lib/image/vanBox.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20),
            child: Align(
                alignment: Alignment.centerLeft, child: Text('Route Map')),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset("lib/image/map.png"),
            ),
          ),
        ]),
      ),
    );
  }
}
