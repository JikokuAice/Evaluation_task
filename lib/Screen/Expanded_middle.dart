import 'package:evaluation_task/Model/shipment.dart';
import 'package:evaluation_task/UI/list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import '../UI/tagContainer.dart';
import '../UI/listItems.dart';

class ExpandedMiddle extends StatefulWidget {
  const ExpandedMiddle({super.key});

  @override
  State<ExpandedMiddle> createState() => _ExpandedMiddleState();
}

class _ExpandedMiddleState extends State<ExpandedMiddle> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
          color: Color.fromARGB(255, 245, 248, 255),
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
            child: Column(
              children: [
                //top start
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Shipment Management",
                      style: TextStyle(fontSize: 24),
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            elevation: WidgetStatePropertyAll(0),
                            backgroundColor: WidgetStatePropertyAll(
                                Color.fromARGB(255, 82, 81, 250)),
                            foregroundColor: WidgetStatePropertyAll(
                                Color.fromARGB(255, 255, 255, 255)),
                            shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)))),
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Icon(
                              Icons.note_add,
                              size: 18,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Text("Add Order"),
                            )
                          ],
                        )),
                    //top end
                    //tags Start
                  ],
                ),
                const Row(
                  children: [
                    Tagcontainer(
                      name: "View All",
                    ),
                    Tagcontainer(
                      buttonColor: Color.fromARGB(255, 188, 188, 255),
                      textColor: Color.fromARGB(255, 33, 58, 243),
                      name: "Active",
                    ),
                    Tagcontainer(
                      name: "View All",
                    ),
                  ],
                ),
                Expanded(
                  child: Consumer<Shipment>(
                    builder: (context, value, child) => GridView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: false,
                        itemCount: value.info.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 0.9,
                          crossAxisCount: 2,
                        ),
                        itemBuilder: (context, int i) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                top: 15, right: 15, left: 10),
                            child: Listitems(
                              image: value.info[i][0],
                              shipmentId: value.info[i][1],
                              fromLocation: value.info[i][2],
                              shipLocation: value.info[i][3],
                              buyer: value.info[i][4],
                              company: value.info[i][5],
                            ),
                          );
                        }),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
