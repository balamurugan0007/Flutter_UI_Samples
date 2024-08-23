import 'package:flutter/material.dart';
import 'package:uisamples/components/BackButton.dart';

class Alertdialog extends StatefulWidget {
  const Alertdialog({super.key});

  @override
  State<Alertdialog> createState() => _AlertdialogState();
}

class _AlertdialogState extends State<Alertdialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aleart Dialog'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('show Aleart button'),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => const AlertDialog(
                      title: Text('Alert Dialog  '),
                      content: Text(
                          'Welcome to the store . Want exit Click below to back'),
                      actions: [
                        CustomBackButton(),
                      ],
                    ));
          },
        ),
      ),
    );
  }
}
