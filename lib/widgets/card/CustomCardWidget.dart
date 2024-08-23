import 'package:flutter/material.dart';

class Customcardwidget extends StatelessWidget {
  const Customcardwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Card'),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 350,
          child: Card(
            elevation: 20,
            color: Colors.orange[800],
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(child: Image.asset('assets/images/mcu.jpeg')),
                  const Text('Captain Marvel')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
