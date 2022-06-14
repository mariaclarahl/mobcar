import 'package:flutter/material.dart';

import '../models/marca_model.dart';
import '../services/marca_service.dart';

class MarcaController extends ChangeNotifier {
  MarcaController(this._service);

  final MarcaService _service;

  List<MarcaModel>? marcaList;
  MarcaModel? selectedMarca;

  void setSelectedMarca(MarcaModel value) {
    selectedMarca = value;
    notifyListeners();
  }

  Future<void> getMarcaList() async {
    marcaList = await _service.fetchAllMarcas();
    notifyListeners();
  }
}
