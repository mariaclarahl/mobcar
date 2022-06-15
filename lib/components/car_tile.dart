import 'package:flutter/material.dart';
import 'package:mobcar/components/menu.dart';
import 'package:mobcar/components/modal_view.dart';
import 'package:mobcar/models/car.dart';

class CarTile extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const CarTile(BuildContext context);

  /* final Car car;

  const CarTile(this.car); */

  @override
  Widget build(BuildContext context) {
    /*    final imagem = car.imagem == null || car.imagem!.isEmpty
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
          ); */
    return ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            'https://motorshow.com.br/wp-content/uploads/sites/2/2021/03/09_hb20_premium.jpg',
            width: 48,
            height: 48,
            fit: BoxFit.cover,
          ),
        ),
        trailing: const Menu(
          car: null,
        ),
        isThreeLine: true,
        title: const Text("Hyundai HB20",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
        subtitle:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('2022',
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
              builder: (_) => ModalView(),
            ),
            child: Text('Ver Mais',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 10,
                    fontWeight: FontWeight.w300)),
          )
        ]));
  }
}
