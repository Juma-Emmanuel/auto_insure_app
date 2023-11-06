import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class MotorClaimImageView extends StatefulWidget {
  final List<String> imageUrls;
  final int initialIndex;

  // final String imageUrl;
  const MotorClaimImageView(
      {super.key, required this.imageUrls, required this.initialIndex});

  @override
  State<MotorClaimImageView> createState() => _MotorClaimImageViewState();
}

class _MotorClaimImageViewState extends State<MotorClaimImageView> {
  Textstyle textStyle = Textstyle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PhotoViewGallery.builder(
        itemCount: widget.imageUrls.length,
        builder: (context, index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: AssetImage(widget.imageUrls[index]),
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered * 2,
          );
        },
        pageController: PageController(initialPage: widget.initialIndex),
        backgroundDecoration: const BoxDecoration(
          color: Colors.white,
        ),
        scrollPhysics: const BouncingScrollPhysics(),
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
