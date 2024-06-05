import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class MotorClaimsUploadReport extends StatefulWidget {
  const MotorClaimsUploadReport({super.key});

  @override
  State<MotorClaimsUploadReport> createState() =>
      _MotorClaimsUploadReportState();
}

class _MotorClaimsUploadReportState extends State<MotorClaimsUploadReport> {
  Textstyle textStyle = Textstyle();
  Appstyle appStyle = Appstyle();
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
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
              'Claims Uploads',
              style: textStyle.bodyLarge,
            ),
          ),
          separator,
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 120),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/motorclaimimagesscreen');
                  },
                  child: Container(
                    height: 48,
                    width: 355,
                    decoration: shadow,
                    child: Center(
                      child: Text(
                        'Claim Images',
                        style: textStyle.bodyLargeBlue,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/motorclaimdocumentsscreen');
                  },
                  child: Container(
                    height: 48,
                    width: 355,
                    decoration: shadow,
                    child: Center(
                      child: Text(
                        'Claim Documents',
                        style: textStyle.bodyLargeBlue,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
