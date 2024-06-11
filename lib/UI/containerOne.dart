import 'package:flutter/material.dart';

class ContainerOne extends StatelessWidget {
  const ContainerOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color.fromRGBO(190, 231, 204, 1)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.0, right: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Row fro Circular icon and Text
                Row(
                  children: [
                    Text(
                      "Today",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.arrow_upward,
                          size: 13,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    "1 333",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  "+613 km",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 64, 152, 66)),
                )
              ],
            ),
          ),
          //image of truck
          Align(
            child: Image(
              image: AssetImage("lib/image/crop.png"),
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
