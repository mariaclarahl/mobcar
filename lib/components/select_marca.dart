import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:mobcar/models/marca_model.dart';
import 'package:mobcar/services/marca_service.dart';

class SelectMarca extends StatefulWidget {
  const SelectMarca({Key? key}) : super(key: key);

  @override
  State<SelectMarca> createState() => _SelectMarcaState();
}

class _SelectMarcaState extends State<SelectMarca> {
  late final Dio dio;
  late final MarcaService marcaService;

  MarcaModel? selectedMarca;

  @override
  void initState() {
    dio = Dio(BaseOptions(baseUrl: 'https://parallelum.com.br/fipe/api/v1'));
    marcaService = MarcaService(dio);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MarcaModel>>(
      future: marcaService.fetchAllMarcas(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const CircularProgressIndicator();
        } else {
          final List<MarcaModel> marcas = snapshot.data!;
          return DropdownButton<MarcaModel>(
            items: marcas
                .map(
                  (marca) => DropdownMenuItem(
                    value: marca,
                    child: Text(marca.nome),
                  ),
                )
                .toList(),
            onChanged: (value) => setState(() {
              selectedMarca = value;
            }),
            value: selectedMarca,
          );
        }
      },
    );
  }
}
