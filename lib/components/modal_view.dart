import 'package:flutter/material.dart';

class ModalView extends StatelessWidget {
/*   final Car car;

  const ModalView(this.car); */

  @override
  Widget build(BuildContext context) {
/*     final imagem = car.imagem == null || car.imagem!.isEmpty
        ? ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://icones.pro/wp-content/uploads/2021/03/icone-de-voiture-symbole-png-noir.png',
              width: 310,
              height: 120,
              fit: BoxFit.fitHeight,
            ),
          )
        : ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              car.imagem.toString(),
              width: 310,
              height: 120,
              fit: BoxFit.cover,
            ),
          ); */
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Icon(
                  Icons.directions_car,
                  color: Colors.black,
                  size: 25,
                ),
                SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Text(
                    "Visualizar",
                  ),
                ),
              ],
            ),
          ),
          IconButton(
              onPressed: () => {Navigator.pop(context)},
              icon: const Icon(Icons.close))
        ],
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://motorshow.com.br/wp-content/uploads/sites/2/2021/03/09_hb20_premium.jpg',
                    width: 310,
                    height: 120,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Color(0xffffad14),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xffffad14),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xffffad14),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xffffad14),
                    ),
                    Icon(
                      Icons.star_border_outlined,
                      color: Color(0xffffad14),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Hyundai'),
                        SizedBox(height: 16),
                        Text('HB20')
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('2022'),
                        SizedBox(height: 16),
                        Text('R\$59.890S')
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.symmetric(vertical: (16)),
              primary: (const Color(0xff000000)),
            ),
            child: const Text(
              'Reservar',
              style: TextStyle(
                  color: Color(0xfffafafa),
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          ),
        )
      ],
    );
  }
}
