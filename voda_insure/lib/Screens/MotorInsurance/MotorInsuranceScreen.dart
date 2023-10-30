import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class MotorInsuranceScreen extends StatefulWidget {
  const MotorInsuranceScreen({super.key});

  @override
  State<MotorInsuranceScreen> createState() => _MotorInsuranceScreenState();
}

class _MotorInsuranceScreenState extends State<MotorInsuranceScreen> {
  final List<String> images = [
    'https://picsum.photos/200/300',
    'https://picsum.photos/300/400',
    'https://picsum.photos/400/500',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        CarouselSlider(
          items: images.map((image) {
            return Image.network(image, fit: BoxFit.cover);
          }).toList(),
          options: CarouselOptions(
            height: 200,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
        )
      ]),
    );
  }
}
