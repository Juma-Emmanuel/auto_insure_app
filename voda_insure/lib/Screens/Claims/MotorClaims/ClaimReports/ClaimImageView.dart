import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MotorClaimImageView extends StatefulWidget {
  final List<String> images;
  final int initialIndex;

  // final String imageUrl;
  const MotorClaimImageView(
      {super.key, required this.images, required this.initialIndex});

  @override
  State<MotorClaimImageView> createState() => _MotorClaimImageViewState();
}

class _MotorClaimImageViewState extends State<MotorClaimImageView> {
  Textstyle textStyle = Textstyle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CarouselSlider(
        items: widget.images.map((image) {
          return Image.asset(
            image,
            fit: BoxFit.fitWidth,
          );
        }).toList(),
        options: CarouselOptions(
          height: double.infinity,
          initialPage: widget.initialIndex,
          enableInfiniteScroll: false,
          viewportFraction: 1.0,
        ),
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 35.0),
              child: Column(
                children: [
                  const Icon(
                    size: 40,
                    Icons.share_outlined,
                    color: Color(0XFF0E2847),
                  ),
                  Text(
                    'Share',
                    style: textStyle.bbodyMediumBlue,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 35.0),
              child: Column(
                children: [
                  const Icon(
                    size: 40,
                    Icons.edit_outlined,
                    color: Color(0XFF0E2847),
                  ),
                  Text(
                    'Edit',
                    style: textStyle.bbodyMediumBlue,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 35.0),
              child: Column(
                children: [
                  const Icon(
                    size: 40,
                    Icons.delete_outlined,
                    color: Color(0XFF0E2847),
                  ),
                  Text(
                    'Delete',
                    style: textStyle.bbodyMediumBlue,
                  )
                ],
              ),
            ),
            Column(
              children: [
                const Icon(
                  size: 40,
                  Icons.download_outlined,
                  color: Color(0XFF0E2847),
                ),
                Text(
                  'Download',
                  style: textStyle.bbodyMediumBlue,
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
