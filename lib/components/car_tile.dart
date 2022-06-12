import 'package:flutter/material.dart';
import 'package:mobcar/components/menu.dart';
import 'package:mobcar/components/modal_view.dart';
import 'package:mobcar/models/car.dart';

class CarTile extends StatelessWidget {
  final Car car;

  const CarTile(this.car);

  @override
  Widget build(BuildContext context) {
    final imagem = car.imagem == null || car.imagem!.isEmpty
        ? ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://icones.pro/wp-content/uploads/2021/03/icone-de-voiture-symbole-png-noir.png',
              width: 48,
              height: 48,
              fit: BoxFit.cover,
            ),
          )
        : ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              car.imagem.toString(),
              width: 48,
              height: 48,
              fit: BoxFit.cover,
            ),
          );
    return ListTile(
        leading: imagem,
        trailing: const Menu(
          car: null,
        ),
        isThreeLine: true,
        title: Text("${car.modelo} ${car.marca}",
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
        subtitle:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(car.ano,
              style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).secondaryHeaderColor,
                  fontWeight: FontWeight.w400)),
          TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () => showDialog(
              barrierDismissible: false,
              context: context,
              builder: (_) => ModalView(car),
            ),
            child: Text('View More',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 10,
                    fontWeight: FontWeight.w300)),
          )
        ]));
  }
}
