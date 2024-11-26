import 'package:flutter/material.dart';

class StepperExample extends StatefulWidget {
  const StepperExample({super.key});

  @override
  State<StepperExample> createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stepper'),
      ),
      body: Stepper(
        currentStep: _currentStep,
        onStepTapped: (step) => setState(() => _currentStep = step),
        onStepContinue:
            _currentStep < 2 ? () => setState(() => _currentStep += 1) : null,
        onStepCancel:
            _currentStep > 0 ? () => setState(() => _currentStep -= 1) : null,
        steps: const [
          Step(title: Text("Step 1"), content: Text("Complete Step 1")),
          Step(title: Text("Step 2"), content: Text("Complete Step 2")),
          Step(title: Text("Step 3"), content: Text("Complete Step 3")),
        ],
      ),
    );
  }
}
