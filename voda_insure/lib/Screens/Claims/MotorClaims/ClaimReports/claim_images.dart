import 'package:flutter/material.dart';
import 'package:voda_insure/Screens/Claims/MotorClaims/ClaimReports/claim_image_view.dart';

import 'package:voda_insure/Styles/style.dart';

class MotorClaimsImagesScreen extends StatefulWidget {
  const MotorClaimsImagesScreen({super.key});

  @override
  State<MotorClaimsImagesScreen> createState() =>
      _MotorClaimsImagesScreenState();
}

class _MotorClaimsImagesScreenState extends State<MotorClaimsImagesScreen> {
  Textstyle textStyle = Textstyle();
  Appstyle appStyle = Appstyle();
  final List<String> images = [
    'assets/lexus_suv.jpg',
    'assets/audi.jpg',
    'assets/white_lexus.jpg',
    'assets/audi.jpg',
    'assets/white_lexus.jpg',
    'assets/lexus_suv.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0XFF726666),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 350,
            height: 48,
            child: appStyle.logo(),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Text(
              'Claim Images',
              style: textStyle.bodyLarge,
            ),
          ),
          separator,
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Wrap(
                spacing: 5.1,
                runSpacing: 5.1,
                children: List.generate(
                  images.length,
                  (index) => InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MotorClaimImageView(
                              images: images, initialIndex: index),
                        ),
                      );
                    },
                    child: SizedBox(
                      width: 120,
                      height: 100,
                      child: Image.asset((images[index]), fit: BoxFit.cover),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

// class ImageGrid extends StatelessWidget {
//   final List<String> images = [
//     'assets/audi.jpg',
//     'assets/lexus_suv.jpg',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3,
//           ),
//           itemCount: images.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Image.asset(images[index], fit: BoxFit.cover);
//           },
//         ),
//       ],
//     );
//   }
// }
