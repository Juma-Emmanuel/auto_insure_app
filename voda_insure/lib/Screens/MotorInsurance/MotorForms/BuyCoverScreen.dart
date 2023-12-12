import 'package:flutter/material.dart';
import 'package:voda_insure/Controllers/MotorInsurance/GetVehicleController.dart';
import 'package:voda_insure/Styles/style.dart';

class BuyCoverScreen extends StatefulWidget {
  const BuyCoverScreen({super.key});

  @override
  State<BuyCoverScreen> createState() => _BuyCoverScreenState();
}

class _BuyCoverScreenState extends State<BuyCoverScreen> {
  Textstyle textStyle = Textstyle();
  Appstyle appStyle = Appstyle();
  final TextEditingController _renewalDateController = TextEditingController();
  final TextEditingController _expiryDateController = TextEditingController();
  GetVehicles getVehicles = GetVehicles();
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
            child: appStyle.logo(),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Text(
              'Register the cover of your Choice',
              style: textStyle.bodyLarge,
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
                      'Cover Renewal Date:',
                      style: textStyle.bodyLarge,
                    ),
                    SizedBox(
                      width: 350,
                      height: 38,
                      child: TextField(
                        controller: _renewalDateController,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.calendar_month),
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
                      style: textStyle.bodyLarge,
                    ),
                    SizedBox(
                      width: 350,
                      height: 38,
                      child: TextField(
                        controller: _expiryDateController,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.calendar_month),
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
                onPressed: () {
                  getVehicles.fetchVehiclesByNationalId(1212);
                },
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
