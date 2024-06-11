import 'package:flutter/material.dart';

class Shipment extends ChangeNotifier {
  final _arrayItems = [
    [
      "lib/image/small.png",
      "22004KZN",
      "Itahari, Nepal",
      "Solukhumbu, Nepal",
      "Kimi YU",
      "Forth Worth"
    ],
    [
      "lib/image/small.png",
      "22004KML",
      "Itahari, Nepal",
      "Manang, Nepal",
      "Kimi YU",
      "Forth Worth"
    ],
    [
      "lib/image/small.png",
      "22004KUO",
      "Itahari, Nepal",
      "Hetauda, Nepal",
      "Kimi YU",
      "Forth Worth"
    ],
    [
      "lib/image/small2.png",
      "22004KTV",
      "Itahari, Nepal",
      "Dharan, Nepal",
      "Kimi YU",
      "Forth Worth"
    ],
    [
      "lib/image/medium_truck.png",
      "22004KYJH",
      "Itahari, Nepal",
      "KTM, Nepal",
      "Kimi YU",
      "Forth Worth"
    ]
  ];

  get info => _arrayItems;
}
