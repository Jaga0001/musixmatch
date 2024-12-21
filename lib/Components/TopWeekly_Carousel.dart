import 'package:flutter/material.dart';
import 'package:musixmatch/Models/Carousel_Model.dart';

class TopWeeklyCarousel extends StatelessWidget {
  TopWeeklyCarousel({Key? key}) : super(key: key);

  final List<CarouselModel> carousel = [
    CarouselModel(
        Names: 'Kissik',
        Images:
            'https://th.bing.com/th/id/OIP.vPHVYA8rq3wsnzPCN5m0owHaEK?rs=1&pid=ImgDetMain'),
    CarouselModel(
        Names: 'Aaluma Doluma',
        Images:
            'https://th.bing.com/th/id/OIP.-vzzwXcGbSvWbq5lKlmmmgAAAA?rs=1&pid=ImgDetMain'),
    CarouselModel(
        Names: 'Pokiri Pongal',
        Images:
            'https://static.toiimg.com/photo/msid-61303427/61303427.jpg?150983'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'Best of the Week',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final carouselItem = carousel[index];
                return Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20),
                  child: Container(
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: NetworkImage(carouselItem.Images!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          carouselItem.Names!,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemCount: carousel.length,
            ),
          ),
        ],
      ),
    );
  }
}
