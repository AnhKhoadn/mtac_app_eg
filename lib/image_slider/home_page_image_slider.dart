import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class HomePageImageSlider extends StatelessWidget {
  const HomePageImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    // list of images
    final List<String> images = [
      'lib/images/img_1.png',
      'lib/images/img_2.png',
      'lib/images/img_3.png',
    ];

    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      alignment: Alignment.center,
      constraints: BoxConstraints.expand(height: 150, width: screenWidth),
      child: Swiper(
        itemCount: images.length,
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            images[index],
            fit: BoxFit.cover
          );
        },
        viewportFraction: 0.7,
        scale: 0.8,
      ),
    );
  }
}
