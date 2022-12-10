import 'package:eventmanagement/datetimepicker.dart';
import 'package:eventmanagement/payment.dart';
import 'package:flutter/material.dart';

class EventBooking extends StatefulWidget {
  EventBooking({super.key, required this.imgUrl});
  String imgUrl;
  @override
  State<EventBooking> createState() => _EventBookingState();
}

class _EventBookingState extends State<EventBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("Booked Event"),
          actions: [
            IconButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Payment())));
                }),
                icon: Icon(Icons.payment)),
          ],
        ),
        body: Column(
          children: [
            Image.network(widget.imgUrl),
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => DateTimePicker())));
                }),
                child: Text("Book Date and Time")),
            ElevatedButton(onPressed: (() {}), child: Text("Book Venue")),
          ],
        ));
  }
}
