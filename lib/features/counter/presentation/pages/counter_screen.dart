import 'package:flutter/material.dart';
import 'package:internship_algoriza_task1/features/counter/presentation/widgets/counter_widget.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           CounterWidget(),
          ],
        ),
      ),
    );
  }
}
