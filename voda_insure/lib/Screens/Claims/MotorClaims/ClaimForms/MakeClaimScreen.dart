import 'package:flutter/material.dart';

import 'package:voda_insure/Styles/style.dart';

class MakeMotorClaimScreen extends StatefulWidget {
  const MakeMotorClaimScreen({super.key});

  @override
  State<MakeMotorClaimScreen> createState() => _MakeMotorClaimScreenState();
}

class _MakeMotorClaimScreenState extends State<MakeMotorClaimScreen> {
  Textstyle textStyle = Textstyle();
  final TextEditingController _claimDateController = TextEditingController();
  final TextEditingController _expiryDateController = TextEditingController();

  Future<void> _expirySelectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null && pickedDate != DateTime.now()) {
      setState(() {
        String formattedDate =
            '${pickedDate.month}-${pickedDate.day}-${pickedDate.year}';
        _expiryDateController.text = formattedDate;
      });
    }
  }

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
              'Make claims involving your Vehicle',
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
                    controller: _claimDateController, label: 'Claim Date'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Policy:',
                      style: textStyle.bodyLarge,
                    ),
                    DropdownButton<String>(
                      menuMaxHeight: 130.0,
                      hint: const Text('policy'),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Insurance Cover Type:',
                      style: textStyle.bodyLarge,
                    ),
                    DropdownButton<String>(
                      menuMaxHeight: 130.0,
                      hint: Text('policy'),
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: SizedBox(
              width: 350,
              height: 42,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF021E3E),
                ),
                child: Text(
                  'BUY INSURANCE COVER ',
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
