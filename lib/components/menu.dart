import 'package:flutter/material.dart';
import 'package:mobcar/models/car.dart';
import 'modal_view.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key, required this.car}) : super(key: key);

  final Car? car;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.more_vert),
      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
        PopupMenuItem(
            child: TextButton(
                onPressed: () => showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (_) => ModalView(),
                    ),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Text('Visualizar',
                    style: TextStyle(
                        color: Theme.of(context).secondaryHeaderColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14)))),
        PopupMenuItem(
            child: TextButton(
                onPressed: () => showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (_) => ModalView(),
                    ),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Text('Editar',
                    style: TextStyle(
                        color: Theme.of(context).secondaryHeaderColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14)))),
        PopupMenuItem(
            child: TextButton(
                onPressed: () => showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (_) => ModalView(),
                    ),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Text('Excluir',
                    style: TextStyle(
                        color: Theme.of(context).secondaryHeaderColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14)))),
      ],
    );
  }
}
