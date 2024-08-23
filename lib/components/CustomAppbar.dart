import 'package:flutter/material.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('${name}'),
      backgroundColor: Colors.blue,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
