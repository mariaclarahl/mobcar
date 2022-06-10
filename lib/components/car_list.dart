import 'package:flutter/material.dart';
import 'package:mobcar/components/menu.dart';

class CarList extends StatelessWidget {
  const CarList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) => const Divider(
              color: Colors.black,
              height: 0,
            ),
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://motorshow.com.br/wp-content/uploads/sites/2/2019/01/dodge-challenger-e1546547487415.jpg',
                  width: 48,
                  height: 48,
                  fit: BoxFit.cover,
                ),
              ),
              trailing: const Menu(),
              isThreeLine: true,
              title: const Text("Title",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Year',
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
                      onPressed: () {},
                      child: Text('View More',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 10,
                              fontWeight: FontWeight.w300)),
                    )
                  ]));
        });
  }
}
