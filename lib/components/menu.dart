import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.more_vert),
      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
        const PopupMenuItem(child: Text('View')),
        const PopupMenuItem(child: Text('Edit')),
        const PopupMenuItem(child: Text('Delete')),
      ],
    );
  }
}
