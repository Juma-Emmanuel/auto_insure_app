import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class Postview extends StatefulWidget {
  const Postview({super.key});

  @override
  State<Postview> createState() => _PostviewState();
}

class _PostviewState extends State<Postview> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CompanyFeed(
                  imagePath: 'assets/jubilee.png',
                  containerColor: const Color(0XFFD21044),
                  onTap: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: CompanyFeed(
                    imagePath: 'assets/apa_logo.png',
                    containerColor: const Color(0XFF0D4093),
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: CompanyFeed(
                    imagePath: 'assets/uap_logo.jpg',
                    containerColor: const Color(0XFFCC003D),
                    onTap: () {},
                  ),
                ),
                CompanyFeed(
                  imagePath: 'assets/cicgroup.png',
                  containerColor: Colors.white,
                  onTap: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              left: 10,
              right: 10,
            ),
            child: Container(
              height: 1,
              color: const Color(0XFFBBBBBB),
            ),
          ),
          const Post(
            containerColor: Color(0XFF0D4093),
            imagePath: 'assets/apa_logo.png',
            companyName: 'APA Insurance',
            coverType: 'Motor insurance',
            postTime: '15h',
            postText:
                'dWhat a way to kick off #CSWeek2023 !!! Earlier today #ICXBoardMember @SteveGMbuthia & a member from our secretariat Joy Njeru visited @APAInsuranceKE during their #CSWeek2023 #DoItNow launch campaign. @Sheila_Bundi  #SEAwards2023 #DrivingCXAgility',
            photo: 'assets/APA_post.jpg',
          ),
          const Post(
            containerColor: Color(0XFF0D4093),
            imagePath: 'assets/apa_logo.png',
            companyName: 'APA Insurance',
            coverType: 'Motor insurance',
            postTime: '15h',
            postText:
                'dWhat a way to kick off #CSWeek2023 !!! Earlier today #ICXBoardMember @SteveGMbuthia & a member from our secretariat Joy Njeru visited @APAInsuranceKE during their #CSWeek2023 #DoItNow launch campaign. @Sheila_Bundi  #SEAwards2023 #DrivingCXAgility',
            photo: 'assets/APA_post.jpg',
          ),
        ],
      ),
    );
  }
}
