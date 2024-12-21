import 'package:flutter/material.dart';

class Search_Page extends StatelessWidget {
  const Search_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 25, right: 25),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: const Color.fromARGB(82, 128, 106, 106),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  border: InputBorder.none,
                  icon: Icon(Icons.search, color: Colors.grey),
                ),
              ),
            ),
          ),
          SizedBox(height: 150),
          Text(
            'Get your favorite lyrics, now',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text('Search for songs',
              style: TextStyle(
                  color: const Color.fromARGB(108, 158, 158, 158),
                  fontSize: 15)),
        ],
      ),
    );
  }
}
