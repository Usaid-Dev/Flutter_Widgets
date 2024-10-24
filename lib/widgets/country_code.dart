import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CountryCode extends StatelessWidget {
  const CountryCode({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Country Code Picker')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IntlPhoneField(
            decoration: const InputDecoration(
              labelText: 'Phone Number',
              border: OutlineInputBorder(
                borderSide: BorderSide(),
              ),
            ),
            initialCountryCode: 'PK',
            onChanged: (phone) {
              print(phone.completeNumber);
            },
          ),
        ),
      ),
    );
  }
}
