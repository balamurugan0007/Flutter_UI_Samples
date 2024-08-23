import 'package:flutter/material.dart';

class CustomDragablewidget extends StatefulWidget {
  const CustomDragablewidget({super.key});

  @override
  State<CustomDragablewidget> createState() => _CustomDragablewidgetState();
}

class _CustomDragablewidgetState extends State<CustomDragablewidget> {
  Color caughtColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dragable widget'),
      ),
      body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Draggable(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  child: Center(
                    child: Text('Box'),
                  ),
                ),
                data: Colors.accents,
                onDraggableCanceled: (velocity, Offset) {},
                feedback: Container(
                  width: 150,
                  height: 150,
                  color: Colors.amber.withOpacity(.8),
                  child: Text('Box...'),
                ),
              ),
              DragTarget(
                onAccept: (Color color) {
                  caughtColor = color;
                },
                builder: (
                  context,
                  List<dynamic> accepted,
                  List<dynamic> rejected,
                ) {
                  return Container(
                    width: 200,
                    height: 200,
                    color: accepted.isEmpty ? caughtColor : Colors.greenAccent,
                    child: Center(
                      child: Text('drage Heare'),
                    ),
                  );
                },
              )
            ],
          )),
    );
  }
}
