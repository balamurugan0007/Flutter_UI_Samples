import 'package:flutter/material.dart';

class CustomDragablescrolableWideget extends StatelessWidget {
  const CustomDragablescrolableWideget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dragable Scrollable'),
        backgroundColor: Colors.grey,
      ),
      body: DraggableScrollableSheet(
        builder: (context, ScrollController controller) {
          return Container(
            color: Colors.orange,
            child: ListView.builder(
                itemCount: 25,
                itemBuilder: (ctx, index) {
                  return ListTile(
                    title: Text('Item ${index}'),
                  );
                }),
          );
        },
      ),
    );
  }
}
