import 'package:flutter/material.dart';

class listItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: const [
        ListTile(
          title: Row(
            children: [
              Icon(
                Icons.home_rounded,
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text("Dashboard"),
              )
            ],
          ),
        ),
        ListTile(
          title: Row(
            children: [
              Icon(
                Icons.message,
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text("message"),
              )
            ],
          ),
        ),
        ListTile(
          title: Row(
            children: [
              Icon(
                Icons.map_rounded,
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text("Routed"),
              )
            ],
          ),
        ),
        ListTile(
          title: Row(
            children: [
              Icon(
                Icons.mail_rounded,
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text("inbox"),
              )
            ],
          ),
        ),
        ListTile(
          title: Row(
            children: [
              Icon(
                Icons.calendar_month_rounded,
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text("Schedule"),
              )
            ],
          ),
        ),
        ListTile(
          title: Row(
            children: [
              Icon(
                Icons.receipt_long_rounded,
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text("Payment"),
              )
            ],
          ),
        ),
        ListTile(
          title: Row(
            children: [
              Icon(
                Icons.summarize_outlined,
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text("Report"),
              )
            ],
          ),
        ),
      ],
    );
  }
}
