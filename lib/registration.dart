import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Registration"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: "Name"),
            keyboardType: TextInputType.name,
            maxLines: 1,
          ),
          TextField(
            decoration: InputDecoration(hintText: "Email"),
            keyboardType: TextInputType.emailAddress,
            maxLines: 1,
          ),
          TextField(
            decoration: InputDecoration(hintText: "Address"),
            keyboardType: TextInputType.streetAddress,
            maxLines: 3,
          ),
          TextField(
            decoration: InputDecoration(hintText: "Phone Number"),
            keyboardType: TextInputType.phone,
            maxLength: 10,
          ),
          TextField(
            decoration: InputDecoration(hintText: " Event Selecting"),
            keyboardType: TextInputType.streetAddress,
            maxLines: 2,
          ),
          TextField(
            decoration: InputDecoration(hintText: "Any other"),
            keyboardType: TextInputType.streetAddress,
            maxLines: 3,
          ),
        ],
      ),
    );
  }
}
