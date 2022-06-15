import 'package:flutter/material.dart';
import 'package:mobcar/components/select_marca.dart';

import 'select_ano.dart';
import 'selects.dart';

class ModalNew extends StatelessWidget {
  const ModalNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Wrap(
            children: const [
              Icon(
                Icons.directions_car,
                color: Colors.black,
                size: 25,
              ),
              SizedBox(
                width: 5,
              ),
              Text('Adicionar'),
            ],
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
                    'https://motorshow.com.br/wp-content/uploads/sites/2/2019/01/dodge-challenger-e1546547487415.jpg',
                    width: 310,
                    height: 120,
                    fit: BoxFit.cover,
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
            const Selects(),
            const SelectAno(),
            const TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                isDense: true,
                border: OutlineInputBorder(),
                labelText: 'Valor (R\$)',
              ),
            )
          ],
        ),
      ),
      actions: <Widget>[
        ElevatedButton(
          onPressed: () => {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding:
                const EdgeInsets.symmetric(vertical: (16), horizontal: (16)),
            primary: (const Color(0xff000000)),
          ),
          child: const Text(
            'Cancelar',
            style: TextStyle(
                color: Color(0xfffafafa),
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
        ),
        ElevatedButton(
          onPressed: () => {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding:
                const EdgeInsets.symmetric(vertical: (16), horizontal: (16)),
            primary: (const Color(0xff000000)),
          ),
          child: const Text(
            'Salvar',
            style: TextStyle(
                color: Color(0xfffafafa),
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }
}
