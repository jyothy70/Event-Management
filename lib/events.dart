import 'package:eventmanagement/eventbooking.dart';
import 'package:flutter/material.dart';

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  List images = [
    "https://media.istockphoto.com/id/918524884/vector/happy-birthday-1-years.jpg?s=612x612&w=0&k=20&c=wYfrib4f1k-5iJG6jqy8q-mXNJ75YBRbjUWeqWWFHYM=",
    "https://t4.ftcdn.net/jpg/02/17/12/07/360_F_217120768_FsCet6Iyb3glrxRpLs9TLJMdJUATZAWe.jpg",
    "https://st3.depositphotos.com/3686803/14278/v/600/depositphotos_142789151-stock-illustration-anniversary-25-th-years-celebrating.jpg",
    "https://media.istockphoto.com/id/1186214696/photo/hindu-wedding-ritual-wherein-bride-and-groom-hand.jpg?b=1&s=170667a&w=0&k=20&c=3msou0mZqFfV9nwabc8O9kwYwDaPvUvKZpyEYI67BoU=",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBFE2NTsvNTZa6-nWsVL4CstTMcJWJU0P4lwSZGn4&s",
    "https://thumbs.dreamstime.com/b/happy-anniversary-greeting-roses-happy-anniversary-greeting-pink-roses-weathered-whitewash-wood-background-158676509.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Events"),
      ),
      body: GridView.builder(
        itemCount: images.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: ((context, index) {
          return Container(
              child: InkWell(
                  child: Image.network(images[index]),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) =>
                                EventBooking(imgUrl: images[index]))));
                  }));
        }),
      ),
    );
  }
}
