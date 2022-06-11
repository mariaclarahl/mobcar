import 'package:flutter/material.dart';

class ModalView extends StatelessWidget {
  const ModalView({Key? key}) : super(key: key);

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
              Text('Title'),
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
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Marca'),
                        SizedBox(height: 16),
                        Text('Modelo')
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Ano'),
                        SizedBox(height: 16),
                        Text('Valor')
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
