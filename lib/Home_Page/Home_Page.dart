import 'package:flutter/material.dart';
import 'package:musixmatch/Components/Home_Carousel.dart';
import 'package:musixmatch/Components/Top50_Carousel.dart';
import 'package:musixmatch/Components/TopWeekly_Carousel.dart';
import 'package:musixmatch/Models/Carousel_Model.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<CarouselModel> carousel = [
    CarouselModel(Names: 'Hiphop', Images: 'assets/image1.jpg'),
    CarouselModel(Names: 'Melody', Images: 'assets/image2.jpg'),
    CarouselModel(Names: 'Folk', Images: 'assets/image3.jpg'),
    CarouselModel(Names: 'Rock', Images: 'assets/image4.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Home',
          style: TextStyle(
            color: const Color.fromARGB(226, 255, 25, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 250, // Fixed height for the horizontal carousel
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: carousel.length,
                itemBuilder: (context, index) {
                  final carouse = carousel[index];
                  return HomeCarousel(
                    images: carouse.Images!,
                    names: carouse.Names!,
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 10); // Horizontal spacing
                },
              ),
            ),
            Top50Carousel(),
            TopWeeklyCarousel(),
          ],
        ),
      ),
    );
  }
}
