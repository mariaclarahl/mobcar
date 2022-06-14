import 'package:flutter/material.dart';
import '../models/marca_model.dart';
import '../models/modelo_model.dart';
import 'package:mobcar/services/modelo_service.dart';

class ModeloController extends ChangeNotifier {
  ModeloController(this._service);

  final ModeloService _service;

  List<ModeloModel>? modeloList;
  ModeloModel? selectedModelo;

  void setSelectedModelo(ModeloModel value) {
    selectedModelo = value;
    notifyListeners();
  }

  Future<void> getModeloListFromMarca(MarcaModel value) async {
    modeloList = await _service.fetchModelosFromMarca(value);
    notifyListeners();
  }
}
