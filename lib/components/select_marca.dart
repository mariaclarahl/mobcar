// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mobcar/api.dart';
import 'package:mobcar/models/marca.dart';

class SelectMarca extends StatefulWidget {
  const SelectMarca({Key? key}) : super(key: key);

  @override
  State<SelectMarca> createState() => _SelectMarcaState();
}

class _SelectMarcaState extends State<SelectMarca> {
  List<Marca> lsMarca = [];

  String? value;

  _SelectMarcaState() {
    _getListaMarca();
  }

  _getListaMarca() async {
    ApiService.getMarca().then((response) {
      setState(() {
        if (response.statusCode == 200) {
          var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
          lsMarca = jsonResponse['data']
              .map<Marca>((json) => Marca.fromJson(json))
              .toList();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Marca>(
      hint: const Text('Marca'),
      items: lsMarca
          .map((marca) => DropdownMenuItem(
                value: marca,
                child: Text(marca.nome),
              ))
          .toList(),
      onChanged: (Object? value) {},
    );
  }
}
