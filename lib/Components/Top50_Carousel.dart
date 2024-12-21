import 'package:flutter/material.dart';
import 'package:musixmatch/Models/Carousel_Model.dart';

class Top50Carousel extends StatelessWidget {
  Top50Carousel({Key? key}) : super(key: key);

  final List<CarouselModel> carousel = [
    CarouselModel(
        Names: 'Aalaporaan Thamizhan',
        Images:
            'https://th.bing.com/th/id/OIP.jst2V9vkVOPvgwQwZxkm_QHaEK?w=319&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
    CarouselModel(
        Names: 'Chennai Express',
        Images:
            'https://m.media-amazon.com/images/M/MV5BOGYyNDQxOTEtOTIxYS00M2M3LWFmMzEtNWRmNmIyZTlhOWY1XkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_.jpg'),
    CarouselModel(
        Names: 'Hayyoda',
        Images:
            'https://www.statushut.net/wp-content/uploads/2023/08/Hayyoda-Song-Jawan-Status-Video-Download.jpg'),
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
              'Top 50',
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
