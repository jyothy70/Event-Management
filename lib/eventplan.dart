import 'package:eventmanagement/eventbooking.dart';
import 'package:eventmanagement/events.dart';
import 'package:eventmanagement/helpdesk.dart';
import 'package:eventmanagement/payment.dart';
import 'package:eventmanagement/registration.dart';
import 'package:flutter/material.dart';

class EventPlan extends StatefulWidget {
  const EventPlan({super.key});

  @override
  State<EventPlan> createState() => _EventPlanState();
}

class _EventPlanState extends State<EventPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Event Plan"),
        actions: [
          IconButton(onPressed: (() {}), icon: Icon(Icons.next_plan_sharp))
        ],
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Registration())));
            },
            child: ListTile(
              title: Text("Registration"),
              leading: Icon(Icons.person),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => Events())));
            },
            child: ListTile(
              title: Text("Events"),
              leading: Icon(Icons.event),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => Events())));
            },
            child: ListTile(
              title: Text("Venue Selection"),
              leading: Icon(Icons.home),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Payment())));
            },
            child: ListTile(
              title: Text("Payment"),
              leading: Icon(Icons.money_off),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => HelpDesk())));
            },
            child: ListTile(
              title: Text("Coordinating"),
              leading: Icon(Icons.contact_support_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
