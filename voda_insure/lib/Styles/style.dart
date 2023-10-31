import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:voda_insure/Screens/Home/ArticleWebView.dart';

Widget logo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        width: 50.16,
        height: 40,
        child: Image.asset('assets/voda_logo.png'),
      ),
      const Text(
        'VODA',
        style: TextStyle(
          fontSize: 26,
          color: Color(0XFF726666),
          fontWeight: FontWeight.w600,
        ),
      ),
      const Text(
        'INSURE',
        style: TextStyle(
          fontSize: 26,
          color: Color(0XFFF30E0E),
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  );
}

final OutlineInputBorder textfieldBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(20.0),
  borderSide: const BorderSide(
    color: Color(0XFFBBBBBB),
    width: 2.0,
  ),
);
BoxDecoration shadow = BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  color: Colors.white,
  boxShadow: [
    BoxShadow(
      color: const Color(0XFF000000).withOpacity(0.2),
      spreadRadius: 2,
      blurRadius: 3,
      offset: const Offset(0, 3),
    ),
  ],
);
const TextStyle bodyMediumWhite = TextStyle(
  color: Color(0XFFFFFFFF),
  fontSize: 16.0,
  fontWeight: FontWeight.normal,
  fontStyle: FontStyle.normal,
);
const TextStyle bodyMediumGrey = TextStyle(
  color: Color(0XFF726666),
  fontSize: 16.0,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
);
const TextStyle bbodyMediumGrey = TextStyle(
  color: Color(0XFF726666),
  fontSize: 16.0,
  fontWeight: FontWeight.normal,
  fontStyle: FontStyle.normal,
);
const TextStyle bbodySmallGrey = TextStyle(
  color: Color(0XFF726666),
  fontSize: 12.0,
  fontWeight: FontWeight.normal,
  fontStyle: FontStyle.normal,
);
const TextStyle bodySmallGrey = TextStyle(
  color: Color(0XFF726666),
  fontSize: 12.0,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
);
const TextStyle bodyMediumBlue = TextStyle(
  color: Color(0XFF0E2847),
  fontSize: 16.0,
  fontWeight: FontWeight.normal,
  fontStyle: FontStyle.normal,
);
const TextStyle headlineMedium = TextStyle(
  color: Color(0XFF0E2847),
  fontSize: 28.0,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
);
const TextStyle headlineSmallGrey = TextStyle(
  color: Color(0XFF726666),
  fontSize: 24.0,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
);
const TextStyle bodyLargeGrey = TextStyle(
  color: Color(0XFF726666),
  fontSize: 20.0,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);
const TextStyle bodyLarge = TextStyle(
  color: Color(0XFF021E3E),
  fontSize: 20.0,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);
const TextStyle buttonText = TextStyle(
  color: Color(0XFFFFFFFF),
  fontSize: 20.0,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);

class CompanyFeed extends StatefulWidget {
  final String imagePath;
  final Color containerColor;
  final VoidCallback? onTap;
  const CompanyFeed(
      {super.key,
      required this.imagePath,
      required this.containerColor,
      this.onTap});

  @override
  State<CompanyFeed> createState() => _CompanyFeedState();
}

class _CompanyFeedState extends State<CompanyFeed> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: 60,
        height: 60,
        // color: Colors.blue,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: const Color(0XFF000000).withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 3),
            ),
          ],
          color: widget.containerColor,
        ),
        child: ClipOval(
          child: Image.asset(widget.imagePath),
        ),
      ),
    );
  }
}

class Post extends StatefulWidget {
  final String imagePath;
  final Color containerColor;
  final String companyName;
  final String coverType;
  final String postTime;
  final String postText;
  final String? photo;
  const Post(
      {super.key,
      required this.imagePath,
      required this.containerColor,
      required this.companyName,
      required this.coverType,
      required this.postTime,
      required this.postText,
      this.photo});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8.0),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                // color: Colors.blue,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0XFF000000).withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  color: widget.containerColor,
                ),
                child: ClipOval(
                  child: Image.asset(widget.imagePath),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  children: [
                    Text(
                      widget.companyName,
                      style: bodyLargeGrey,
                    ),
                    Text(
                      widget.coverType,
                      style: bodyMediumGrey,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Row(
                  children: [
                    Text(
                      widget.postTime,
                      style: bodyMediumGrey,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz,
                          size: 32,
                          color: Color(0XFF9C9494),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            left: 20.0,
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ArticleWebView()),
              );
            },
            child: Column(
              children: [
                Text(
                  widget.postText,
                  style: bodyMediumGrey,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 22.0,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: widget.photo != null
                        ? Image.asset(
                            widget.photo!,
                          )
                        : Container(),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1.0, left: 18.0),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.thumb_up_alt_outlined,
                    color: Color(0XFF0E2847),
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.sms_outlined,
                    color: Color(0XFF0E2847),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 180.0),
                child: IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.share,
                      color: Color(0XFF0E2847),
                    )),
              ),
            ],
          ),
        )
      ],
    );
  }
}
