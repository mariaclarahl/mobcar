import 'dart:convert';
import 'package:mobcar/models/car.dart';
import 'package:http/http.dart';

class ApiService {
  final String apiUrl = "https://parallelum.com.br/fipe/api/v1/carros/marcas";

  ApiService(Future<List<Car>> Function() param0);

  Future<List<Car>> getCar() async {
    Response res = await get(Uri.parse(apiUrl));

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Car> car = body.map((dynamic item) => Car.fromJson(item)).toList();
      return car;
    } else {
      throw "Failed to load car list";
    }
  }

  Future<Car> getCaseById(String id) async {
    final response = await get(Uri.parse('$apiUrl/$id'));

    if (response.statusCode == 200) {
      return Car.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load a car');
    }
  }

  Future<Car> createCar(Car car) async {
    Map data = {
      'imagem': car.imagem,
      'marca': car.marca,
      'modelo': car.modelo,
      'ano': car.ano,
      'valor': car.valor,
    };

    final Response response = await post(
      Uri.parse(apiUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );
    if (response.statusCode == 200) {
      return Car.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to post car');
    }
  }

  Future<Car> updateCar(String id, Car car) async {
    Map data = {
      'imagem': car.imagem,
      'marca': car.marca,
      'modelo': car.modelo,
      'ano': car.ano,
      'valor': car.valor,
    };

    final Response response = await put(
      Uri.parse('$apiUrl/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );
    if (response.statusCode == 200) {
      return Car.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to update a car');
    }
  }

  Future<void> deleteCar(String id) async {
    Response res = await delete(Uri.parse('$apiUrl/$id'));

    if (res.statusCode == 200) {
      print("Car deleted");
    } else {
      throw "Failed to delete a car.";
    }
  }
}
