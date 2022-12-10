import 'package:flutter/material.dart';

class HelpDesk extends StatefulWidget {
  const HelpDesk({super.key});

  @override
  State<HelpDesk> createState() => _HelpDeskState();
}

class _HelpDeskState extends State<HelpDesk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("HelpDesk"),
        ),
        body: Column(children: [
          TextField(
            decoration: InputDecoration(hintText: "About Us"),
            keyboardType: TextInputType.streetAddress,
            maxLines: 3,
          ),
          TextField(
            decoration: InputDecoration(hintText: "Contact Us"),
            keyboardType: TextInputType.phone,
            maxLength: 10,
          ),
        ]));
  }
}
