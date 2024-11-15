import 'package:flutter/material.dart';

class PromotionPage extends StatelessWidget {
  PromotionPage({super.key});

  final List<Map<String, String>> promotions = [
    {'title': 'Winter Wonderland', 'discount': '50% Off', 'image': 'assets/images/winter.png'},
    {'title': 'Summer Paradise', 'discount': '30% Off', 'image': 'assets/images/summer.png'},
    {'title': 'Spring Getaway', 'discount': '40% Off', 'image': 'assets/images/spring.png'},
    {'title': 'Winter Wonderland', 'discount': '50% Off', 'image': 'assets/images/winter.png'},
    {'title': 'Summer Paradise', 'discount': '30% Off', 'image': 'assets/images/summer.png'},
    {'title': 'Spring Getaway', 'discount': '40% Off', 'image': 'assets/images/spring.png'},
    {'title': 'Winter Wonderland', 'discount': '50% Off', 'image': 'assets/images/winter.png'},
    {'title': 'Summer Paradise', 'discount': '30% Off', 'image': 'assets/images/summer.png'},
    {'title': 'Spring Getaway', 'discount': '40% Off', 'image': 'assets/images/spring.png'},
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Holiday Promotions')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: promotions.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 3,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(promotions[index]['image']!, fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(promotions[index]['title']!, style: Theme.of(context).textTheme.bodyMedium),
                        Text(promotions[index]['discount']!, style: TextStyle(color: Colors.yellow[700])),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
