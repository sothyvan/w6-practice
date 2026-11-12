import 'package:flutter/material.dart';

// EX 1 – The hobbies (handout page: EX 1)
// Part 1: build ONE hobby card.
// Part 2: extract it into a StatelessWidget called HobbyCard, then show several cards.

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                'My Hobbies',
                style: TextStyle(
                  fontSize: 24,
                )),
            ),
            Container(
              padding: EdgeInsets.all(40),
              color: Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  HobbyCard(
                    title: 'Football', 
                    icon: Icons.sports_soccer),
                  SizedBox(
                    height: 10,
                  ),
                  HobbyCard(
                    title: 'Gaming',
                    icon: Icons.sports_esports,
                    color: Colors.green),
                ],
              ),
            ) 
          ],
        ), // YOUR CODE
      ),
    ),
  );
}

class HobbyCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const HobbyCard({
    super.key,
    required this.title,
    required this.icon,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 20),
          Text(title),
        ],
      ),
    );
  }
}
