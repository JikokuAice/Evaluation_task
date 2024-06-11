import 'package:flutter/material.dart';
import '../UI/list.dart';
import '../UI/containerOne.dart';
import 'package:evaluation_task/UI/containerSecond.dart';
import 'package:evaluation_task/UI/greendot.dart';

class ExpandedLeft extends StatelessWidget {
  const ExpandedLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: const BoxDecoration(
            border: Border(
                right: BorderSide(
                    color: const Color.fromARGB(255, 240, 240, 240),
                    width: 2))),
        child: Column(
          children: [
            //image icon
            Image.asset("lib/image/Screenshot 2024-06-10 210831.png"),
            const Padding(
              padding:
                  EdgeInsets.only(top: 10.0, bottom: 10, left: 10, right: 10),
              child: Divider(
                color: Color.fromARGB(255, 208, 208, 208),
              ),
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.all(1.5),
                    child: Image.asset(
                      "lib/image/profile.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //profile Text
                const Column(
                  children: [Text("Alex carter"), Text("alex@gmail.com")],
                ),
                Icon(Icons.keyboard_arrow_down)
              ],
            ),
            const Padding(
              padding:
                  EdgeInsets.only(top: 10.0, bottom: 10, left: 10, right: 10),
              child: Divider(
                color: Color.fromARGB(255, 208, 208, 208),
              ),
            ),
            //navigation list
            Expanded(child: listItems()),
            //shipment UI
            const Padding(
              padding: EdgeInsets.only(right: 12.0, top: 60, left: 12),
              child: ContainerOne(),
            ),
            //Green Dot
            const Padding(
              padding: EdgeInsets.only(left: 80, right: 100, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Greendot(), Greendot(), Greendot(), Greendot()],
              ),
            ),
            //container second
            const Containersecond()
          ],
        ),
      ),
    );
  }
}
