import 'package:flutter/material.dart';

class FlightSchedule extends StatelessWidget {
  FlightSchedule({super.key});

  final List<Map<String, String>> flights = [
    {'destination': 'New York', 'time': '15:00', 'price': '\$500', 'image': 'assets/images/ny.png'},
    {'destination': 'Tokyo', 'time': '18:30', 'price': '\$800', 'image': 'assets/images/tokyo.png'},
    {'destination': 'Paris', 'time': '11:00', 'price': '\$650', 'image': 'assets/images/paris.png'},
    {'destination': 'New York', 'time': '15:00', 'price': '\$500', 'image': 'assets/images/ny.png'},
    {'destination': 'Tokyo', 'time': '18:30', 'price': '\$800', 'image': 'assets/images/tokyo.png'},
    {'destination': 'Paris', 'time': '11:00', 'price': '\$650', 'image': 'assets/images/paris.png'},
    {'destination': 'New York', 'time': '15:00', 'price': '\$500', 'image': 'assets/images/ny.png'},
    {'destination': 'Tokyo', 'time': '18:30', 'price': '\$800', 'image': 'assets/images/tokyo.png'},
    {'destination': 'Paris', 'time': '11:00', 'price': '\$650', 'image': 'assets/images/paris.png'},
    {'destination': 'New York', 'time': '15:00', 'price': '\$500', 'image': 'assets/images/ny.png'},
    {'destination': 'Tokyo', 'time': '18:30', 'price': '\$800', 'image': 'assets/images/tokyo.png'},
    {'destination': 'Paris', 'time': '11:00', 'price': '\$650', 'image': 'assets/images/paris.png'},
    {'destination': 'New York', 'time': '15:00', 'price': '\$500', 'image': 'assets/images/ny.png'},
    {'destination': 'Tokyo', 'time': '18:30', 'price': '\$800', 'image': 'assets/images/tokyo.png'},
    {'destination': 'Paris', 'time': '11:00', 'price': '\$650', 'image': 'assets/images/paris.png'},
    {'destination': 'New York', 'time': '15:00', 'price': '\$500', 'image': 'assets/images/ny.png'},
    {'destination': 'Tokyo', 'time': '18:30', 'price': '\$800', 'image': 'assets/images/tokyo.png'},
    {'destination': 'Paris', 'time': '11:00', 'price': '\$650', 'image': 'assets/images/paris.png'},
    {'destination': 'New York', 'time': '15:00', 'price': '\$500', 'image': 'assets/images/ny.png'},
    {'destination': 'Tokyo', 'time': '18:30', 'price': '\$800', 'image': 'assets/images/tokyo.png'},
    {'destination': 'Paris', 'time': '11:00', 'price': '\$650', 'image': 'assets/images/paris.png'},
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flight Schedule')),
      body: ListView.builder(
        itemCount: flights.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: Image.asset(flights[index]['image']!, fit: BoxFit.cover, width: 50),
              title: Text(flights[index]['destination']!, style: Theme.of(context).textTheme.bodyMedium),
              subtitle: Text('Time: ${flights[index]['time']}'),
              trailing: Text(flights[index]['price']!, style: TextStyle(color: Colors.yellow[700])),
            ),
          );
        },
      ),
    );
  }
}
