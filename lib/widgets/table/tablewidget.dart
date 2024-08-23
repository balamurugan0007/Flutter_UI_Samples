import 'package:flutter/material.dart';

class Tablewidget extends StatelessWidget {
  const Tablewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(30),
          child: Table(
            border: TableBorder.all(color: Colors.red),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: const [
              TableRow(decoration: BoxDecoration(), children: [
                TableCell(child: Text('name')),
                TableCell(child: Text('age'))
              ]),
              TableRow(
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  children: [
                    TableCell(child: Text('murugan')),
                    TableCell(child: Text('25'))
                  ])
            ],
          )),
    );
  }
}
