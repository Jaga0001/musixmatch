import 'package:flutter/material.dart';
import 'package:musixmatch/Contribute_Page/Contribute_Page.dart';
import 'package:musixmatch/Home_Page/Home_Page.dart';
import 'package:musixmatch/Identify_Page/Identify_Page.dart';
import 'package:musixmatch/Music_Page/music_page.dart';
import 'package:musixmatch/Search_Page/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  int _currentIndex = 0;

  // List of widgets to show on each tab
  final List<Widget> _pages = [
    HomePage(),
    MusicPage(),
    ContributePage(),
    IdentifyPage(),
    Search_Page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Music',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Contribute',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle_outlined),
            label: 'Identify',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }
}
