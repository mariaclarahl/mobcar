import 'package:dio/dio.dart';
import 'package:mobcar/models/marca_model.dart';

class MarcaService {
  MarcaService(this._dio);

  final Dio _dio;

  Future<List<MarcaModel>> fetchAllMarcas() async {
    final Response response =
        await _dio.get('https://parallelum.com.br/fipe/api/v1/carros/marcas');

    final List marcaMapList = response.data as List;
    final List<MarcaModel> marcaList =
        marcaMapList.map((marcaMap) => MarcaModel.fromMap(marcaMap)).toList();
    return marcaList;
  }
}
