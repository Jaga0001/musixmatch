import 'package:flutter/material.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'Spotify',
          style: TextStyle(
            color: Colors.green,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Center(
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://th.bing.com/th/id/R.3587f8e9df02e2990b93afb9cd6d2323?rik=pdu4Ha7cd%2ftwrg&riu=http%3a%2f%2fpluspng.com%2fimg-png%2fspotify-logo-png-spotify-music-app-icon-1024.jpg&ehk=an3w0ln31JOUxMDxW5d5y1NdJ87FxWd1D0Uid0Kc6xw%3d&risl=&pid=ImgRaw&r=0',
                          width: 40, // Set width for the image
                          height: 60, // Set height for the image
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.music_note,
                          color: const Color.fromARGB(255, 77, 220, 82),
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Get the lyrics for your Spotify music',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Import your Spotify playlists and listen to any song with lyrics and translations.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Connect Spotify',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Not Now',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
