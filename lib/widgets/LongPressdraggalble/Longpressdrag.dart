import 'package:flutter/material.dart';
import 'package:uisamples/components/BackButton.dart';

class LongPressDraggableWidget extends StatefulWidget {
  const LongPressDraggableWidget({super.key});

  @override
  State<LongPressDraggableWidget> createState() =>
      _LongPressDraggableWidgetState();
}

class _LongPressDraggableWidgetState extends State<LongPressDraggableWidget> {
  Offset _offset = Offset(200, 300);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              const SizedBox(
                height: 100,
                child: CustomBackButton(),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      left: _offset.dx,
                      top: _offset.dy,
                      child: LongPressDraggable(
                        feedback: Image.asset(
                          'assets/images/car.jpeg',
                          height: 200,
                          color: Colors.orange,
                          colorBlendMode: BlendMode.colorBurn,
                        ),
                        child: Image.asset(
                          'assets/images/car.jpeg',
                          height: 200,
                        ),
                        onDragEnd: (details) {
                          setState(() {
                            double adjustment =
                                MediaQuery.of(context).size.height -
                                    constraints.maxHeight;
                            _offset = Offset(
                              details.offset.dx,
                              details.offset.dy - adjustment,
                            );
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
