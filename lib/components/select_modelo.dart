import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobcar/models/marca_model.dart';
import 'package:mobcar/services/marca_service.dart';
import 'package:mobcar/models/modelo_model.dart';
import 'package:mobcar/services/modelo_service.dart';
import 'package:mobcar/controllers/marca_controller.dart';
import 'package:mobcar/controllers/modelo_controller.dart';

class SelectModelo extends StatefulWidget {
  const SelectModelo({Key? key}) : super(key: key);

  @override
  _SelectModeloState createState() => _SelectModeloState();
}

class _SelectModeloState extends State<SelectModelo> {
  late final Dio dio;
  late final MarcaService marcaService;
  late final ModeloService modeloService;

  late final MarcaController marcaController;
  late final ModeloController modeloController;

  @override
  void initState() {
    dio = Dio(BaseOptions(baseUrl: 'https://parallelum.com.br/fipe/api/v1'));

    marcaService = MarcaService(dio);
    modeloService = ModeloService(dio);

    marcaController = MarcaController(marcaService);
    modeloController = ModeloController(modeloService);

    marcaController.getMarcaList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedBuilder(
            animation: marcaController,
            builder: (_, __) {
              if (marcaController.marcaList != null) {
                return Flexible(
                  flex: 1,
                  child: DropdownButton<MarcaModel>(
                    hint: const Text('Marca'),
                    value: marcaController.selectedMarca,
                    items: marcaController.marcaList!
                        .map((marca) => DropdownMenuItem(
                              value: marca,
                              child: Text(marca.nome),
                            ))
                        .toList(),
                    onChanged: (value) {
                      marcaController.setSelectedMarca(value!);
                      modeloController.getModeloListFromMarca(value);
                    },
                  ),
                );
              } else {
                return const CircularProgressIndicator();
              }
            }),
        const SizedBox(width: 20.0),
        AnimatedBuilder(
            animation: modeloController,
            builder: (_, __) {
              if (marcaController.selectedMarca == null) {
                return Flexible(
                  flex: 2,
                  child: DropdownButton<void>(
                    hint: const Text('Modelo'),
                    items: const [],
                    onChanged: (value) => {},
                    isExpanded: true,
                  ),
                );
              } else {
                if (modeloController.modeloList == null) {
                  return const CircularProgressIndicator();
                } else {
                  return Expanded(
                    flex: 2,
                    child: DropdownButton<ModeloModel>(
                      value: modeloController.selectedModelo,
                      isExpanded: true,
                      hint: const Text('Modelo'),
                      items: modeloController.modeloList!
                          .map((modelo) => DropdownMenuItem(
                                value: modelo,
                                child: Text(modelo.nome),
                              ))
                          .toList(),
                      onChanged: (value) =>
                          modeloController.setSelectedModelo(value!),
                    ),
                  );
                }
              }
            }),
      ],
    );
  }
}
