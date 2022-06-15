// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:mobcar/components/car_tile.dart';

class CarList extends StatelessWidget {
  const CarList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) => const Divider(
              color: Colors.black,
              height: 0,
            ),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return CarTile(context);
        });
  }
}
