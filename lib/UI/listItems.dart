import 'package:evaluation_task/Model/shipment.dart';
import 'package:flutter/material.dart';

class Listitems extends StatelessWidget {
  const Listitems(
      {required this.image,
      required this.shipmentId,
      required this.shipLocation,
      required this.fromLocation,
      required this.buyer,
      required this.company});

  final String image;
  final String shipmentId;
  final String shipLocation;
  final String fromLocation;
  final String buyer;
  final String company;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(144, 223, 223, 223)),
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text("Shipment number"),
                    Text(
                      shipmentId,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                Image.asset(
                  image,
                  height: 40,
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                thickness: 0.2,
                color: Color.fromRGBO(180, 180, 180, 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  const CircleAvatar(
                    maxRadius: 15,
                    backgroundColor: Color.fromRGBO(232, 249, 238, 1),
                    child: Icon(
                      Icons.arrow_outward_outlined,
                      size: 18,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      shipLocation,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10),
              child: Row(
                children: [
                  const CircleAvatar(
                    maxRadius: 15,
                    backgroundColor: Color.fromRGBO(227, 237, 255, 1),
                    child: Icon(
                      Icons.arrow_downward,
                      size: 18,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      shipLocation,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                thickness: 0.2,
                color: Color.fromRGBO(180, 180, 180, 1),
              ),
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Buyer",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 151, 151, 151)),
                    ),
                    Text(
                      buyer,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        company,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 151, 151, 151),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
