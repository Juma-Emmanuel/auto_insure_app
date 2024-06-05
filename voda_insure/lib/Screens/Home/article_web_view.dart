import 'package:flutter/material.dart';
import 'package:voda_insure/Screens/Home/post.dart';

class ArticleWebView extends StatefulWidget {
  const ArticleWebView({super.key});

  @override
  State<ArticleWebView> createState() => _ArticleWebViewState();
}

class _ArticleWebViewState extends State<ArticleWebView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          Column(
            children: [
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
        ]),
      ),
    );
  }
}
