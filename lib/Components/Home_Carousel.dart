import 'package:flutter/material.dart';

class HomeCarousel extends StatelessWidget {
  final String images;
  final String names;

  const HomeCarousel({super.key, required this.images, required this.names});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 25),
      child: SizedBox(
        height: 150, // Adjusted height for better layout
        width: 300, // Adjusted width for horizontal scrolling
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              names,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 25), // Space between text and image
            Container(
              height: 140, // Height for the image container
              width: 300,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(10), // Added rounded corners
                image: DecorationImage(
                  image: AssetImage(images), // Your asset image
                  fit: BoxFit.cover, // Ensures the image covers the container
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
