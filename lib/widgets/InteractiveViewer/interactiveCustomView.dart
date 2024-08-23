import 'package:flutter/material.dart';
import 'package:uisamples/components/BackButton.dart';

class Interactivecustomview extends StatefulWidget {
  const Interactivecustomview({super.key});

  @override
  State<Interactivecustomview> createState() => _InteractivecustomviewState();
}

class _InteractivecustomviewState extends State<Interactivecustomview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: InteractiveViewer(
          boundaryMargin: EdgeInsets.all(double.infinity),
          child: Scaffold(
              appBar: AppBar(
                title: const Text('Flutter inteactive view'),
              ),
              body: const Center(
                child: CustomBackButton(),
              ))),
    );
  }
}
