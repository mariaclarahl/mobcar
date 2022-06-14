import 'package:dio/dio.dart';
import 'package:mobcar/models/marca_model.dart';
import 'package:mobcar/models/modelo_model.dart';

class ModeloService {
  ModeloService(this._dio);

  final Dio _dio;

  Future<List<ModeloModel>> fetchModelosFromMarca(MarcaModel marca) async {
    final String marcaCodigo = marca.codigo;
    final Response response = await _dio.get(
        'https://parallelum.com.br/fipe/api/v1/carros/marcas/$marcaCodigo/modelos');

    final List modeloMapList = response.data as List;
    final List<ModeloModel> modeloList = modeloMapList
        .map((modeloMap) => ModeloModel.fromMap(modeloMap))
        .toList();
    return modeloList;
  }
}
