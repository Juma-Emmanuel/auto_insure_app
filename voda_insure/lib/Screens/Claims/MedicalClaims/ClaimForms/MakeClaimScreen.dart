import 'package:flutter/material.dart';

import 'package:voda_insure/Styles/style.dart';

class MakeMedicalClaimScreen extends StatefulWidget {
  const MakeMedicalClaimScreen({super.key});

  @override
  State<MakeMedicalClaimScreen> createState() => _MakeMedicalClaimScreenState();
}

class _MakeMedicalClaimScreenState extends State<MakeMedicalClaimScreen> {
  Textstyle textStyle = Textstyle();
  final TextEditingController _claimDateController = TextEditingController();
  final TextEditingController claimStatusController = TextEditingController();
  final TextEditingController claimAmountController = TextEditingController();
  final TextEditingController claimDescriptionController =
      TextEditingController();
  final TextEditingController claimDocumentController = TextEditingController();
  final TextEditingController claimCommentController = TextEditingController();

  String _selectedItem = 'Third party';
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
            child: logo(),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Text(
              'Make claims involving your Medical Cover',
              style: textStyle.bodyLarge,
            ),
          ),
          separator,
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DatePicker(
                    controller: _claimDateController, label: 'Claim Date:'),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Claim Status:',
                        style: textStyle.bodyLarge,
                      ),
                      SizedBox(
                        width: 350,
                        height: 38,
                        child: TextField(
                          controller: claimStatusController,
                          decoration: InputDecoration(
                            focusedBorder: textfieldBorder,
                            enabledBorder: textfieldBorder,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Claim Amount:',
                        style: textStyle.bodyLarge,
                      ),
                      SizedBox(
                        width: 350,
                        height: 38,
                        child: TextField(
                          controller: claimAmountController,
                          decoration: InputDecoration(
                            focusedBorder: textfieldBorder,
                            enabledBorder: textfieldBorder,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Claim Description:',
                        style: textStyle.bodyLarge,
                      ),
                      SizedBox(
                        width: 350,
                        height: 38,
                        child: TextField(
                          controller: claimDescriptionController,
                          decoration: InputDecoration(
                            focusedBorder: textfieldBorder,
                            enabledBorder: textfieldBorder,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Claim Type:',
                        style: textStyle.bodyLarge,
                      ),
                      DropdownButton<String>(
                        menuMaxHeight: 130.0,
                        borderRadius: BorderRadius.circular(20),
                        value: _selectedItem,
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedItem = newValue!;
                          });
                        },
                        items: <String>['Third party', 'Comprehensive']
                            .map<DropdownMenuItem<String>>(
                              (String value) => DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Claim Document (Link):',
                        style: textStyle.bodyLarge,
                      ),
                      SizedBox(
                        width: 350,
                        height: 38,
                        child: TextField(
                          controller: claimDocumentController,
                          decoration: InputDecoration(
                            focusedBorder: textfieldBorder,
                            enabledBorder: textfieldBorder,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              height: 42,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF021E3E),
                ),
                child: Text(
                  'Submit Claim',
                  style: textStyle.buttonText,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
