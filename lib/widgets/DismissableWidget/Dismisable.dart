import 'package:flutter/material.dart';

class DismisableCustomWidget extends StatefulWidget {
  const DismisableCustomWidget({super.key});

  @override
  State<DismisableCustomWidget> createState() => _DismisableCustomWidgetState();
}

class _DismisableCustomWidgetState extends State<DismisableCustomWidget> {
  List<int> items = List<int>.generate(100, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissable Widget'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              key: ValueKey<int>(items[index]),
              background: Container(
                color: Colors.red,
                child: Icon(Icons.delete),
              ),
              child: ListTile(
                title: Text('item ${items[index]}'),
              ),
              onDismissed: (DismissDirection direction) {
                setState(() {
                  items.removeAt(index);
                });
              },
            );
          }),
    );
  }
}
