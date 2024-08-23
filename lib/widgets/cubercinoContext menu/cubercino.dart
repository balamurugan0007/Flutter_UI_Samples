import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cubercino extends StatelessWidget {
  const Cubercino({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoContextMenu(
        child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWO5ZnpYRnx_sPUukUsQOjmBBwjXzPB1uB6w&s'),
        actions: [
          CupertinoContextMenuAction(
            child: const Text('data'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          CupertinoContextMenuAction(
            child: const Text('back'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
