import 'package:flutter/material.dart';

import 'package:voda_insure/Styles/style.dart';

class MakeMotorClaimScreen extends StatefulWidget {
  const MakeMotorClaimScreen({super.key});

  @override
  State<MakeMotorClaimScreen> createState() => _MakeMotorClaimScreenState();
}

class _MakeMotorClaimScreenState extends State<MakeMotorClaimScreen> {
  TextEditingController _renewalDateController = TextEditingController();
  TextEditingController _expiryDateController = TextEditingController();
  Future<void> _renewalSelectDate(BuildContext context) async {
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
        _renewalDateController.text = formattedDate;
      });
    }
  }

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
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: Text(
              'Make claims involving your Vehicle',
              style: bodyLarge,
            ),
          ),
          separator,
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Policy:',
                      style: bodyLarge,
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Insurance Cover Type:',
                      style: bodyLarge,
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cover Renewal Date:',
                      style: bodyLarge,
                    ),
                    SizedBox(
                      width: 350,
                      height: 38,
                      child: TextField(
                        controller: _renewalDateController,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(Icons.calendar_month),
                            onPressed: () {
                              _renewalSelectDate(context);
                            },
                          ),
                          enabledBorder: textfieldBorder,
                          focusedBorder: textfieldBorder,
                        ),
                        readOnly: true,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cover Expiry Date:',
                      style: bodyLarge,
                    ),
                    SizedBox(
                      width: 350,
                      height: 38,
                      child: TextField(
                        controller: _expiryDateController,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(Icons.calendar_month),
                            onPressed: () {
                              _expirySelectDate(context);
                            },
                          ),
                          enabledBorder: textfieldBorder,
                          focusedBorder: textfieldBorder,
                        ),
                        readOnly: true,
                      ),
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
                child: const Text(
                  'BUY INSURANCE COVER ',
                  style: buttonText,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
