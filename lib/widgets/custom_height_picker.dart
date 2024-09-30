import 'package:flutter/material.dart';

class HeightPicker extends StatefulWidget {
  const HeightPicker({super.key});

  @override
  State<HeightPicker> createState() => _HeightPickerState();
}

class _HeightPickerState extends State<HeightPicker> {
  double _currentHeight = 170.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Select Your Height: ${_currentHeight.round()} cm'),
          Slider(
            value: _currentHeight,
            min: 100.0,
            max: 250.0,
            divisions: 150,
            label: _currentHeight.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentHeight = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
