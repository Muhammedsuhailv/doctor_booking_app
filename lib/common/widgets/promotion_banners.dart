import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';

class PromotionBanner extends StatelessWidget {
  final List<String> imgList = [
    'asset/dental.jpg',
    'asset/piles.jpg',
    'asset/pregnant.jpg',
    'asset/knee.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 2.0,
      ),
      items: imgList
          .map(
            (item) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(item),
              fit: BoxFit.cover,
            ),
          ),
          width: screenWidth * 0.3,
          height: screenHeight * 0.3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: '•',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff00B8FE),
                            ),
                          ),
                          TextSpan(
                            text: ' Practo ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff253292),
                            ),
                          ),
                          TextSpan(
                            text: '•',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff00B8FE),
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      iconSize: 10.0,
                      padding: EdgeInsets.all(4.0),
                      style: ButtonStyle(
                        elevation: MaterialStatePropertyAll(3),
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        minimumSize: MaterialStatePropertyAll(Size(5.0, 5.0)),
                        padding: MaterialStatePropertyAll(EdgeInsets.all(4.0)),
                      ),
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ],
                ),
                const Text(
                  "D E N T A L",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff00B8FE),
                  ),
                ),
                const Text(
                  "C L I N I C S",
                  style: TextStyle(fontSize: 10),
                ),
                const Text(
                  "Best - quality treatments\nusing advanced techniques",
                  style: TextStyle(fontSize: 8),
                ),
              ],
            ),
          ),
        ),
      )
          .toList(),
    );
  }
}
