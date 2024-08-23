import 'package:flutter/material.dart';
import 'package:uisamples/components/CustomAppbar.dart';

class AnimatedcontainerWidget extends StatefulWidget {
  const AnimatedcontainerWidget({super.key});

  @override
  State<AnimatedcontainerWidget> createState() =>
      _AnimatedcontainerWidgetState();
}

class _AnimatedcontainerWidgetState extends State<AnimatedcontainerWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
        backgroundColor: Colors.orange,
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
            child: AnimatedContainer(
          width: selected ? 200.0 : 100.0,
          height: selected ? 100.0 : 200.0,
          color: selected ? Colors.red : Colors.blue,
          alignment: selected ? Alignment.center : AlignmentDirectional.center,
          duration: Duration(seconds: 2),
          curve: Curves.bounceInOut,
          child: Image.asset(
            'assets/images/mcu.jpeg',
            fit: BoxFit.cover,
          ),
        )),
      ),
    );
  }
}
