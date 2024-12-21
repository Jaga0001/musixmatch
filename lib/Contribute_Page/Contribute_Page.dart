import 'package:flutter/material.dart';

class ContributePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'Contribute',
          style:
              TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TaskCard(
              title: 'Complete your profile',
              percentage: '40%',
              color: Colors.black,
            ),
            SizedBox(height: 12),
            TaskCard(
              title: 'Take Academy and graduate',
              icon: Icons.school,
              color: Colors.brown.shade800,
            ),
            SizedBox(height: 12),
            TaskCard(
              title: 'Help the community and get Premium free',
              icon: Icons.handshake,
              color: Colors.purple.shade800,
            ),
            SizedBox(height: 20),
            // Weekly Top Contributors
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Weekly top contributors',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'View all',
                    style: TextStyle(color: Colors.redAccent),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: List.generate(
                5,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey.shade800,
                    backgroundImage: AssetImage(
                        'assets/profile_placeholder.png'), // Ensure this asset exists
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Weekly Points Section
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ACTIVITY',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Weekly Points',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '0',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  final String title;
  final String? percentage;
  final IconData? icon;
  final Color color;

  const TaskCard({
    required this.title,
    this.percentage,
    this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          if (percentage != null)
            Text(
              percentage!,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          if (icon != null)
            Icon(
              icon,
              color: Colors.white,
              size: 24,
            ),
        ],
      ),
    );
  }
}
