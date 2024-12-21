import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:musixmatch/Search_Page/search_page.dart';
=======
import 'package:musixmatch/Home_Page/Home_Page.dart';
>>>>>>> main

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
<<<<<<< HEAD
      home: Search_Page(),
=======
      home: HomePage(),
>>>>>>> main
    );
  }
}
