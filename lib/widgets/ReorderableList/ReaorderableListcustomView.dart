import 'package:flutter/material.dart';

class ReorderableListCustomView extends StatefulWidget {
  const ReorderableListCustomView({super.key});

  @override
  State<ReorderableListCustomView> createState() =>
      _ReorderableListCustomViewState();
}

class _ReorderableListCustomViewState extends State<ReorderableListCustomView> {
  final List<String> names = [
    'john',
    "Murugan",
    "Amir",
    'Anu',
    "kiran",
    "Ram",
    "krish",
    "Madhu",
    "sakthi",
    "Nancy"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reorderable List View'),
      ),
      body: ReorderableListView.builder(
        itemBuilder: (ctx, i) {
          return Container(
            key: ValueKey(names[i]), // Key moved to Container

            margin: const EdgeInsets.symmetric(vertical: 10),
            color: Colors.orange,
            child: ListTile(
              title: Text(names[i]),
              hoverColor: Colors.orange,
              selectedColor: Colors.green,
            ),
          );
        },
        itemCount: names.length,
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            final String item = names.removeAt(oldIndex);
            names.insert(newIndex, item); // Insert the item at the new index
          });
        },
      ),
    );
  }
}
