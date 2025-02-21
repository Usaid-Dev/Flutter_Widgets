import 'package:flutter/material.dart';

class ProgressIndicatorExample extends StatefulWidget {
  const ProgressIndicatorExample({super.key});

  @override
  State<ProgressIndicatorExample> createState() =>
      _ProgressIndicatorExampleState();
}

class _ProgressIndicatorExampleState extends State<ProgressIndicatorExample> {
  double _progress = 0.0;

  void _incrementProgress() {
    setState(() {
      _progress += 0.1;
      if (_progress > 1.0) _progress = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Progress Indicator')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator(value: _progress),
            const SizedBox(height: 20),
            LinearProgressIndicator(value: _progress),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _incrementProgress,
              child: const Text('Increase Progress'),
            ),
          ],
        ),
      ),
    );
  }
}
