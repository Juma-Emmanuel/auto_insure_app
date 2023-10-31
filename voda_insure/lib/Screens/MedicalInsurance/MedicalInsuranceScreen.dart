import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class MedicalInsuranceScreen extends StatefulWidget {
  const MedicalInsuranceScreen({super.key});

  @override
  State<MedicalInsuranceScreen> createState() => _MedicalInsuranceScreenState();
}

class _MedicalInsuranceScreenState extends State<MedicalInsuranceScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 22.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: shadow,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 350,
                        height: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/corporatemedic.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Text(
                        'Corporate Medical Insurance Cover',
                        style: bodyLargeGrey,
                      ),
                      const Text(
                        'Get your Organization Covered!',
                        style: bodyMediumGrey,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: shadow,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 350,
                        height: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/selfmedical.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Text(
                        'Self/Family Medical Insurance Cover',
                        style: bodyLargeGrey,
                      ),
                      const Text(
                        'Get your self/family covered today!',
                        style: bodyMediumGrey,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: shadow,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 350,
                        height: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/privatepolicy.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Text(
                        'Privacy Policy',
                        style: bodyLargeGrey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: shadow,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 350,
                        height: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/termsandconditions.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Text(
                        'Terms and conditions',
                        style: bodyLargeGrey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
